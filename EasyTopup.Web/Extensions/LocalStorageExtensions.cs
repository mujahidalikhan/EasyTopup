using Hanssens.Net;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using System;

namespace EasyTopup.Web.Extensions
{
    public static class LocalStorageExtensions
    {
        public static string Store(StorageType key, string value)
        {
            string response = string.Empty;
            try
            {
                using (var storage = new LocalStorage())
                {
                    storage.Store(key.ToString(), value);
                    storage.Persist();
                }
            }
            catch (Exception ex)
            {
                response = ex.Message;
            }
            return response;
        }

        public static string Get(StorageType key)
        {
            string response = string.Empty;
            try
            {
                using (var storage = new LocalStorage())
                {
                    response = storage.Get(key.ToString()).ToString();
                    storage.Persist();
                }
            }
            catch (Exception ex)
            {
                response = "not found";
            }
            return response;
        }

        public static bool Exists(StorageType key)
        {
            bool response = false;
            try
            {
                using (var storage = new LocalStorage())
                {
                    response = storage.Exists(key.ToString());
                }
            }
            catch (Exception ex)
            {
                response = false;
            }
            return response;
        }

        public static string Clear()
        {
            string response = string.Empty;
            try
            {
                using (var storage = new LocalStorage())
                {
                    storage.Clear();
                    storage.Destroy();
                }
            }
            catch (Exception ex)
            {
                response = ex.Message;
            }
            return response;
        }

        public static bool ValidSession(string controller)
        {
            bool response = false;
            try
            {
                bool tokenExists = false;
                string role = string.Empty;

                using (var storage = new LocalStorage())
                {
                    tokenExists = storage.Exists(StorageType.Token.ToString());
                }
                using (var storage = new LocalStorage())
                {
                    role = storage.Get(StorageType.Role.ToString()).ToString();
                }
                if (role == "Admin")
                {
                    if (tokenExists && 
                        (controller == "Dashboard" ||
                        controller == "Profile" ||
                        controller == "Company" ||
                        controller == "Shop" ||
                        controller == "User" ||
                        controller == "Template" ||
                        controller == "Balance"))
                    {
                        response = true;
                    }
                    else
                    {
                        response = false;
                    }
                }
                else if (role == "Company")
                {
                    if (tokenExists &&
                        (controller == "Dashboard" ||
                        controller == "Profile" ||
                        controller == "Shop" ||
                        controller == "User" ||
                        controller == "Balance" ||
                        controller == "Card" ||
                        controller == "Code"))
                    {
                        response = true;
                    }
                    else
                    {
                        response = false;
                    }
                }
                else if (role == "Shop")
                {
                    if(tokenExists && 
                        (controller == "Sale" || 
                        controller == "Profile"))
                    {
                        response = true;
                    }
                    else
                    {
                        response = false;
                    }
                }
            }
            catch (Exception ex)
            {
                response = false;
            }
            return response;
        }
    }

    public static class SessionExtensions
    {
        public static void SetObject(this ISession session, StorageType key, string value)
        {
            session.SetString(key.ToString(), JsonConvert.SerializeObject(value));
        }

        public static object GetObject(this ISession session, StorageType key)
        {
            var value = session.GetString(key.ToString());
            return value == null ? string.Empty : JsonConvert.DeserializeObject(value);
        }
    }

    public enum StorageType
    {
        Token = 0,
        UserId = 1,
        Username = 2,
        Picture = 3,
        Role = 4,
        Name = 5,
        IsCompanySelected = 6,
        IsShopSelected = 7,
        Balance = 8,
    }
}
