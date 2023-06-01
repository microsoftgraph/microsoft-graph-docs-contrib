---
title: "Add a certificate to an app or service principal using Microsoft Graph"
description: "Learn how to update an app's certificate credentials programmatically using Microsoft Graph."
author: "FaithOmbongi"
ms.reviewer: saurabh.madan
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "applications"
ms.date: 01/24/2023
---

# Add a certificate to an app using Microsoft Graph

Azure Active Directory (Azure AD) supports three types of credentials to authenticate apps and service principals: *passwords* (app secrets), *certificates*, and *federated identity credentials*. If you can't use federated identity credentials for your app, we strongly recommend that you use certificates instead of secrets.

You can [add or remove certificates using the Azure portal](/azure/active-directory/develop/quickstart-register-app#add-a-certificate). However, in automation scenarios, you may need to automate the certificate rollover for your app or service principal. 

This article provides guidance for using Microsoft Graph and PowerShell scripts to update certificate credentials programmatically for an app registration.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

- An active Azure AD tenant.
- An API client such as [Graph Explorer](https://aka.ms/ge). Sign in as a user in an *Application Administrator* role or a user who is allowed to create and manage applications in the tenant.
- A signed certificate that you'll use to authenticate the app. This article uses a self-signed certificate for demonstration purposes. To learn how to create a self-signed certificate, see [Create a self-signed public certificate to authenticate your application](/azure/active-directory/develop/howto-create-self-signed-certificate).

> [!CAUTION]
> The use of certificates is highly recommended over secrets; however, we don't recommend using self-signed certificates. They can reduce the security bar of your application due to various factors like use of an outdated hash and cipher suites or lack of validation. We recommend procuring certificates from a well known trusted certificate authority.

## Step 1: Read the certificate details

To add a certificate programmatically using Microsoft Graph, you need the certificate's key. You can optionally add the certificate's thumbprint.

### [Optional] Get the certificate thumbprint

It's optional to add the certificate thumbprint to the request payload. If you want to add the thumbprint, you can run the following PowerShell request to read the certificate's thumbprint. This request assumes that you generated and exported the certificate to your local drive.

#### Request

```powershell-interactive
Get-PfxCertificate -Filepath "C:\Users\admin\Desktop\20230112.cer" | Out-File -FilePath "C:\Users\admin\Desktop\20230112.cer.thumbprint.txt" ## Replace the file path with the source of your certificate
```

#### Response

The output that's saved in the *.txt* file can be similar to the following.

```powershell
Thumbprint                                Subject
----------                                -------
5A126608ED1A1366F714A4A62B7015F3262840F1  CN=20230112
```

### Get the certificate key

To read the certificate's key using PowerShell, run the following request.

#### Request

```powershell-interactive
[convert]::ToBase64String((Get-Content C:\Users\admin\Desktop\20230112.cer -Encoding byte))  | Out-File -FilePath "C:\Users\admin\Desktop\20230112.key.txt" ## Replace the file path with the location of your certificate
```

#### Response

The output that's saved in the *.txt* file can be similar to the following.

> **Note:** The key shown here has been shortened for readability.

```powershell
MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/...dG+7WMIBsIUy0xz6MmyvfSohz3oNP4jHt7pJ9TyxnvDlaxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A==
```

## Step 2: Add the certificate details using Microsoft Graph

### Request

The following request adds the certificate details to an app. The settings are as follows:

- The **startDateTime** is the date when or after the certificate was created.
- The **endDateTime** can be a maximum of one year from the **startDateTime**. If unspecified, the system will automatically assign a date one year after the startDateTime.
- The **type** and **usage** must be `AsymmetricX509Cert` and `Verify` respectively.
- Assign the certificate subject name to the **displayName** property.
- The **key** is the Base64 encoded value that you generated in the previous step.

> [!NOTE]
> If your app has an existing valid certificate that you want to continue using for authentication, include both the current and new certificate details in the app's **keyCredentials** object. Because this a PATCH call, which by protocol replaces the contents of the property with the new values, including only the new certificate will replace the existing certificates with the new one.

The following example adds a new certificate and replaces any existing certificates.

> **Note:** The key shown here has been shortened for readability.


# [HTTP](#tab/http)
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
            "endDateTime": "2024-01-11T15:31:26Z",
            "startDateTime": "2023-01-12T15:31:26Z",
            "type": "AsymmetricX509Cert",
            "usage": "Verify",
            "key": "base64MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/...laxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A==",
            "displayName": "CN=20230112"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/applications-howto-add-certificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/applications-howto-add-certificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/applications-howto-add-certificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/applications-howto-add-certificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/applications-howto-add-certificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/applications-howto-add-certificate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The following example adds a new certificate without replacing the existing certificate that's identified by thumbprint `52ED9B5038A47B9E2E2190715CC238359D4F8F73`.

> **Note:** The key shown here has been shortened for readability.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "applications_howto_append_certificate"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/bb77f42f-dacb-4ece-b3e6-285e63c24d52
Content-type: application/json

{
    "keyCredentials": [
        {
            "endDateTime": "2024-01-11T15:31:26Z",
            "startDateTime": "2023-01-12T09:31:26Z",
            "type": "AsymmetricX509Cert",
            "usage": "Verify",
            "key": "base64MIIDADCCAeigAwIBAgIQejfrj3S974xI//npv7hFHTANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExNDAeFw0yMzAxMTIwOTA4NThaFw0yNDAxMTIwOTI4NThaMBMxETAPBgNVBAMMCDIwMjMwMTE0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt5vEj6j1l5wOVHR4eDGe77HWslaIVJ1NqxrXPm/...+R+U7sboj+kUvmFzXI+Ge73Liu8egL2NzOHHpO43calWgq36a9YW1yhBQR1ioEchu6jmudW3rF6ktmVqQ==",
            "displayName": "CN=20230114"
        },
        {
            "customKeyIdentifier": "52ED9B5038A47B9E2E2190715CC238359D4F8F73",
            "type": "AsymmetricX509Cert",
            "usage": "Verify",
            "key": "base64MIIDADCCAeigAwIBAgIQfoIvchhpToxKEPI4iMrU1TANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMzAeFw0yMzAxMTIwODI3NTJaFw0yNDAxMTIwODQ3NTJaMBMxETAPBgNVBAMMCDIwMjMwMTEzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw+iqg1nMjYmFcFJh/.../S5X6qoEOyJBgtfpSBANWAdA==",
            "displayName": "CN=20230113"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/applications-howto-append-certificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/applications-howto-append-certificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/applications-howto-append-certificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/applications-howto-append-certificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/applications-howto-append-certificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/applications-howto-append-certificate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

```http
HTTP/1.1 204 No Content
```

## Step 3: Test app-only authentication

You can test the app-only authentication using Microsoft Graph PowerShell, as shown in the following example.

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

You've used Microsoft Graph to update certificate credentials for an app object. This process is a programmatic alternative to using the Azure portal. You can also update certificate credentials for a service principal by following a similar process and calling the `https://graph.microsoft.com/v1.0/servicePrincipals/` endpoint.
