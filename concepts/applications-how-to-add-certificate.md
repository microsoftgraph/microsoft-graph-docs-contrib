---
title: "Update certificate credentials for an app or service principal using Microsoft Graph"
description: "Learn how to update an app's certificate credentials programmatically using Microsoft Graph."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "applications"
ms.date: 12/21/2022
---

# Add a certificate to an app using Microsoft Graph

Azure Active Directory (Azure AD) supports three types of credentials to authenticate apps and service principals: *passwords* (app secret), *certificates*, and *federated identity credentials*. If you can't use federated identity credentials for your app, we strongly recommend that you use certificates instead of secrets.

You can [add or remove certificates using the Azure portal](/azure/active-directory/develop/quickstart-register-app#add-a-certificate). However, in automation scenarios, you may need to automate the certificate rollover for your app or service principal. 

This article provides guidance for using Microsoft Graph and PowerShell scripts to update certificate credentials programmatically for an app registration.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

- An active Azure AD tenant.
- Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) as a user in an *Application Administrator* role or a user allowed to create and manage applications in the tenant.
- Have a signed certificate that you'll use to authenticate the app. This article uses a self-signed certificate for demonstration purposes. To learn how to create a self-signed certificate, see [Create a self-signed public certificate to authenticate your application](/azure/active-directory/develop/howto-create-self-signed-certificate).

> [!CAUTION]
> Self-signed certificates are not trusted by default and they can be difficult to maintain. Also, they may use outdated hash and cipher suites that may not be strong. For better security, purchase a certificate signed by a well-known certificate authority.

## Read the certificate details

To add a certificate programmatically using Microsoft Graph, you need the certificate's thumbprint and key.

### Get the certificate thumbprint

To read the certificate's thumbprint using PowerShell, run the following request. Save the value for the thumbprint.

#### Request

```powershell-interactive
Get-PfxCertificate -Filepath "C:\Users\admin\Desktop\20230112.cer" ## Replace the file path with the source of your certificate
```

#### Response

```powershell
Thumbprint                                Subject
----------                                -------
5A126608ED1A1366F714A4A62B7015F3262840F1  CN=20230112
```

### Get the certificate key

To read the certificate's key using PowerShell, run the following request. Save the value for the key.

#### Request

```powershell-interactive
[convert]::ToBase64String((Get-Content C:\Users\admin\Desktop\20230112.cer -Encoding byte)) ## Replace the file path with the location of your certificate
```

#### Response

```powershell
MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/v2dC9+3ZKCWs6ptdElRkSsD6B2uR2eCye5gq7jqXZZEC6eizNio7ATsozpSm04YSgzmPgyItIkRWz6//S84WDfIKWeh06RvH8Bid9D1q1BiOiJcaFOB4aa5mNijqE0p3de93ZXTEAWpROWSCdlqp9iFiV7BGEVY/1yw7nhczRj1ytLgz7Bh4KAG5OF5QR684RQtegYNS21qBe/GPYaG6bcHZncA0rpqzX02dIJXSso30LDGTo7/JjA/OQraTa5IbF63rI4/7c2ZCaoJlkyaH6h8q+Vl5GvJwhjaCNk7QU2Z5DC8+jYnqinkU3MoX2RKgG9iyxQIDAQABo1AwTjAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMB0GA1UdDgQWBBTCTHKgygs8PRMZvOBxYslBbZzSTTANBgkqhkiG9w0BAQsFAAOCAQEAXIaTjjVmgfMCq0UEgN1xpYW5uRu+sypHYKujDUs7pOrqsxnhvxSIo4ZSb9/mmUM0YO/LNMB7gvtUCOJIPjflE3mKksueYnBt8o3d2vmZuEwGjG8vyJFlZ2vOPeeiO7GiBEBHASPnvsdvvA0kJgTQUl52jFRTKcKfkS7GX9qtsBU0Zu0w8zzz97SBvBuroiijvbgXWV13r/LSNyIUSkVYf0uJsogdpN9iK964m7LVkxl6SjeEIBDedG+7WMIBsIUy0xz6MmyvfSohz3oNP4jHt7pJ9TyxnvDlaxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A==
```

## Add the certificate details using Microsoft Graph

### Request

The following request adds the certificate details to an app. The settings are as follows:

- The value of **customKeyIdentifier** is the certificate thumbprint.
- The **startDateTime** is the date when or after the certificate was created.
- The **endDateTime** can be a maximum of one year from the **startDateTime**. If unspecified, the system will automatically assign a date one year after the startDateTime.
- The type and usage must be `AsymmetricX509Cert` and `Verify` respectively.
- Assign the certificate subject name to the displayName property.

> [!NOTE]
> If your app has an existing valid certificate that you want to continue using for authentication, include both the current and new certificate details in the app's **keyCredentials** object. Including only the new certificate details replaces the existing certificate with the new one.

The following example adds a new certificate and replaces any existing certificates.

<!-- {
  "blockType": "request",
  "name": "applications_howto_add_certificate"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/bb77f42f-dacb-4ece-b3e6-285e63c24d52
Content-type: application/json

{
    "keyCredentials": [
        {
            "customKeyIdentifier": "5A126608ED1A1366F714A4A62B7015F3262840F1",
            "endDateTime": "2024-01-11T15:31:26Z",
            "startDateTime": "2023-01-12T15:31:26Z",
            "type": "AsymmetricX509Cert",
            "usage": "Verify",
            "key": "MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/v2dC9+3ZKCWs6ptdElRkSsD6B2uR2eCye5gq7jqXZZEC6eizNio7ATsozpSm04YSgzmPgyItIkRWz6//S84WDfIKWeh06RvH8Bid9D1q1BiOiJcaFOB4aa5mNijqE0p3de93ZXTEAWpROWSCdlqp9iFiV7BGEVY/1yw7nhczRj1ytLgz7Bh4KAG5OF5QR684RQtegYNS21qBe/GPYaG6bcHZncA0rpqzX02dIJXSso30LDGTo7/JjA/OQraTa5IbF63rI4/7c2ZCaoJlkyaH6h8q+Vl5GvJwhjaCNk7QU2Z5DC8+jYnqinkU3MoX2RKgG9iyxQIDAQABo1AwTjAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMB0GA1UdDgQWBBTCTHKgygs8PRMZvOBxYslBbZzSTTANBgkqhkiG9w0BAQsFAAOCAQEAXIaTjjVmgfMCq0UEgN1xpYW5uRu+sypHYKujDUs7pOrqsxnhvxSIo4ZSb9/mmUM0YO/LNMB7gvtUCOJIPjflE3mKksueYnBt8o3d2vmZuEwGjG8vyJFlZ2vOPeeiO7GiBEBHASPnvsdvvA0kJgTQUl52jFRTKcKfkS7GX9qtsBU0Zu0w8zzz97SBvBuroiijvbgXWV13r/LSNyIUSkVYf0uJsogdpN9iK964m7LVkxl6SjeEIBDedG+7WMIBsIUy0xz6MmyvfSohz3oNP4jHt7pJ9TyxnvDlaxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A==",
            "displayName": "CN=20230112"
        }
    ]
}
```

The following example adds a new certificate without replacing the existing certificate that's identified by thumbprint `52ED9B5038A47B9E2E2190715CC238359D4F8F73`.

<!-- {
  "blockType": "request",
  "name": "applications_howto_add_certificate"
}-->
```http
{
    "keyCredentials": [
        {
            "customKeyIdentifier": "021099593B26FFE991F202143937D062943FE691",
            "endDateTime": "2024-01-11T15:31:26Z",
            "startDateTime": "2023-01-12T09:31:26Z",
            "type": "AsymmetricX509Cert",
            "usage": "Verify",
            "key": "MIIDADCCAeigAwIBAgIQejfrj3S974xI//npv7hFHTANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExNDAeFw0yMzAxMTIwOTA4NThaFw0yNDAxMTIwOTI4NThaMBMxETAPBgNVBAMMCDIwMjMwMTE0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt5vEj6j1l5wOVHR4eDGe77HWslaIVJ1NqxrXPmoF5z2kFZcy7cJy+/KkoK2cyVouSp9C2BYvbauebThyTDtwdTs3YXKFavL4gagV6XbdIev1/KW3eHU04JgHBE4q+v7rEcKGbHMITmmau3nfJh0ox9jdSnXRZOElblqzd8o0/MXBFKXf3X/wEGX3TJqruJEcO0EkpWuELiQ2DP45DxRMK/iAZmr9VK8GZcNcoOldYCm29XLgy2gBRCExRWPmeWg9FXWqU5eNLcJhNo4aYBlfoxK6oDkd8SLltUgeWE92X1H2b8/12nMSC3hdVCmEp/9SUfEFX9seBgW6vW89x9G+MQIDAQABo1AwTjAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMB0GA1UdDgQWBBTalZOgXzC2abRxVxlIZhuzogLWrDANBgkqhkiG9w0BAQsFAAOCAQEAe2+yNeGfr7f7OLGDx/5K1nda4xm9UEN1h9KarBtm1pPUQysGZgeLtCdBCo5hO49luGCPebTJS2f8n5+lMSWN2BmvHS6rj4s0/WbIRrAhu7L6+LF2DzSGBCQdOf1msZXeNi81J+qolEBYgRHBxdNpcGsY4PnmRdSHSLjMXCGOt70JRV3OMqsH+8cd+qEXmWl4+cgi+it3Wbp1OnuXPA10imutONWnwCVg6EAxnZdAxPrGRfJoYK+qDqTBYiMkrpcWszR8p+R+U7sboj+kUvmFzXI+Ge73Liu8egL2NzOHHpO43calWgq36a9YW1yhBQR1ioEchu6jmudW3rF6ktmVqQ==",
            "displayName": "CN=20230114"
        },
        {
            "customKeyIdentifier": "52ED9B5038A47B9E2E2190715CC238359D4F8F73",
            "type": "AsymmetricX509Cert",
            "usage": "Verify",
            "key": "MIIDADCCAeigAwIBAgIQfoIvchhpToxKEPI4iMrU1TANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMzAeFw0yMzAxMTIwODI3NTJaFw0yNDAxMTIwODQ3NTJaMBMxETAPBgNVBAMMCDIwMjMwMTEzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw+iqg1nMjYmFcFJh/yEFdfwQHumc9RQj1bXlp5Wea5wdQGBw0SjHJ06ldLnZ/NBdBAy59XmpQeEmKUp4YIs8CXmv3JzYzZkiskXyPbI8rMI28v4EWFCloV3v1cClIuKLlf5+Nh6kcuJ6SkW7CR0Ax6VC6VHpFWnEAjO06m1hTC1fQaGVMq9Y4UcN+SdxaPNlysln73AeCttfuSgNUNTXgqAtKY38qNt8RjIuReJHh7Mt1GeQ2bjzabMBVwGSCkOFo4aMWX9/Lun0mZs8rG9k5bGvN6UXPpHXFuGiXQyfPQhG7stQ8mAlGhSy9noy75KZ7kjx/VXQrtrufGJ6X+Y+zQIDAQABo1AwTjAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMB0GA1UdDgQWBBSTepbcvleV8j4M8uHLDxxlv/7RODANBgkqhkiG9w0BAQsFAAOCAQEAWU0mAt+ded58CFVlzEe9Ed/BYl7H3PyaWULF2bp76rmEO7xxx5zjayuRtf91Z3jtT2GhDR+t/LNcW+Y6RKp/1Vga6dPqplPusRKbIJUF2nuzLADmgAlw9anpRn/TyMIuazfZi7BuNrztTujVoProJDqBJ9DSEpDziYwaAIBPbKPiqKXcxW9/VZ8QnDreN900nVBOa9IruOvyLo69gHED6MTpUH4CXAqIhImaPzy0L8Pl85K93okI5UOlipd53Evzzp0WR6VyN1xhovGjFblu37zwYNEsoW9KE6w9s5UcPABmfeJ9s8aXOelINAMt6z/S5X6qoEOyJBgtfpSBANWAdA==",
            "displayName": "CN=20230113"
        }
    ]
}
```

### Response

```http
HTTP/1.1 204 No Content
```

## Test app-only authentication

You can test the app-only authentication using Microsoft Graph PowerShell as shown in the following example.

### Request

```powershell-interactive
## Authenticate using the certificate thumbprint
Connect-MgGraph -ClientID cf34b10f-50fd-4167-acf6-4f08ddd4561b -TenantId 38d49456-54d4-455d-a8d6-c383c71e0a6d -CertificateThumbprint 52ED9B5038A47B9E2E2190715CC238359D4F8F73

## Authenticate using the certificate subject name
Connect-MgGraph -ClientID 588028ea-22c2-490e-8c6b-80cd06985e8c -TenantId 38d49456-54d4-455d-a8d6-c383c71e0a6d -CertificateName CN=20230113
```

### Response

```powershell
Welcome To Microsoft Graph!
```

To confirm that you're running the Microsoft Graph PowerShell session without a signed-in user, run the following request.

```powershell
Get-MgContext
```

The response is similar to the following.

```powershell


ClientId              : cf34b10f-50fd-4167-acf6-4f08ddd4561b
TenantId              : 38d49456-54d4-455d-a8d6-c383c71e0a6d
CertificateThumbprint :
Scopes                :
AuthType              : AppOnly
AuthProviderType      : ClientCredentialProvider
CertificateName       : CN=20230113
Account               :
AppName               : testApp
ContextScope          : Process
Certificate           :
PSHostVersion         : 5.1.22621.963
ClientTimeout         : 00:05:00


```

## Conclusion

You've used Microsoft Graph to update certificate credentials for an app object. This process is a programmatic alternative to using the Azure portal. You can also update certificate credentials for a service principal following a similar process and calling the `https://graph.microsoft.com/v1.0/servicePrincipals/` endpoint.