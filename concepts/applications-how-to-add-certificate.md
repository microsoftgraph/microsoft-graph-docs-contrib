---
title: "Update application certificate credentials using Microsoft Graph"
description: "Learn how to use the applications and service principals APIs in Microsoft Graph to update your app's certificate credentials."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "applications"
ms.date: 12/21/2022
---

# Add a certificate to an app using Microsoft Graph

Azure Active Directory (Azure AD) supports three types of credentials yo authenticate apps and service principals: passwords (app secret), certificates, and federated identity credentials. If you can't deploy a managed identity for your app, we strongly recommend that you use certificates instead of secrets.

You can [add or remove certificates using the Azure portal](/azure/active-directory/develop/quickstart-register-app#add-a-certificate). However, in automation scenarios, you may need to automate the certificate rolling cycle for your app. Using a combination of Microsoft Graph and scripting tools, you can automate certificate updates for your app.

This article provides guidance for using PowerShell to read certificate details then using Microsoft Graph to update certificate credentials programmatically for an app registration.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

- A working Azure AD tenant.
- Sign in to [Graph Explorer](https://aka.ms/ge) as a user in an *Application Administrator* role or a user allowed to create and manage applications in the tenant.
- Have a signed certificate that you'll use to authenticate the app. This article uses a self-signed certificate for demonstration purposes. To learn how to create a self-signed certificate, see [Create a self-signed public certificate to authenticate your application](/azure/active-directory/develop/howto-create-self-signed-certificate).

> [!CAUTION]
> Self-signed certificates are not trusted by default and they can be difficult to maintain. Also, they may use outdated hash and cipher suites that may not be strong. For better security, purchase a certificate signed by a well-known certificate authority.

## Read the certificate details

To add a certificate programmatically using Microsoft Graph, you need the certificate's thumbprint and key.

### Get the certificate thumbprint

To read the certificate's thumbprint using PowerShell, run the following request.

#### Request

```powershell-interactive
Get-PfxCertificate -Filepath "C:\Users\admin\Desktop\20221220.cer" ## Replace the file path with the location of your certificate
```

#### Response

```powershell
Thumbprint                                Subject
----------                                -------
4809D6EA89A7C43F69FFAC84656F8CBCB571B1F9  CN=20221220
```

### Get the certificate key

To read the certificate's key using PowerShell, run the following request.

#### Request

```powershell-interactive
[convert]::ToBase64String((Get-Content C:\Users\admin\Desktop\20221220.cer -Encoding byte)) ## Replace the file path with the location of your certificate
```

#### Response

```powershell
MIIDADCCAeigAwIBAgIQHfy9G83A5Y5MrBXtWXhCKzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIyMTIyMDAeFw0yMjEyMjAxNTI3MjBaFw0yMzEyMjAxNTQ3MjBaMBMxETAPBgNVBAMMCDIwMjIxMjIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt0dTLXoTqv4RLFE0AQtqkPXDSEMZWifaS+0qL67EDbtLg6wXLsF0vW7k8+gi9CxGq7TIlD431mQ2G6jpeM5GHtG0QaIE/cYrWHH4t9ZHI986LX4nWPt7FhgzQE4AJMG7QGYJVww9qaJAVxFwiCFA2E/ILKT9fz0aVKh6Ld59J+J80VJYSvj1TGqBlwOSSix45L1ZgbdNSfe2UT4po2fTKEGLjMatcHFE4ztQUsBD4bMtBzA8ly+e+Tmu0jk7jrm7bg389usvbp2Oz2+M9SFNubN3aIRvZifY5Rjg6JG6xH897g9cKksKFUScD7QvjCCkEspEcDdbsNa+ZdIYFkL8aQIDAQABo1AwTjAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMB0GA1UdDgQWBBQH5KckLC72C29DEylsuV+E/f9WqTANBgkqhkiG9w0BAQsFAAOCAQEAG6E1HmGGhamFE/dYZox88+OjRRZkYPADZR+6LScY6cWKOSMzgH79pqeftci/QwYV1Nv5/d0LNCH/D6c1Kb0V6PlNZB+oP5bsfJ/mDrtPjNq17Rdv7P4bNqcvCAa50fQ5kATHHniLhA99wZxfuuKjxVuuUZUfd9BOtxBTT1p1tw5Z+ULKxYzbRPlMgUpZnmeQfevi3Qwz0I4zbcfBVmK6LEMPVDsKjYNENNRqersS1OK+zUnjs4yJzqcWf+jgx8EPUoagAlNR+q91tzVph3Mch92M1Hr6Fy7DHCUxQyhimUZhvxsraf+u8DGV2dUsHat5H3diXN1GMj3iNqHWhN4G6Q==
```

## Add the certificate details using Microsoft Graph

### Request

The following request adds the certificate details to an app. The settings are as follows:

- The **customKeyIdentifier** is the certificate thumbprint.
- The **endDateTime** can be a maximum of one year from the **startDateTime**. If unspecified, the system will automatically assign a date one year after the startDateTime.
- The **type** and **usage** must be `AsymmetricX509Cert` and `Verify` respectively.
- Assign the certificate subject name to the **displayName** property.

<!-- {
  "blockType": "request",
  "name": "applications_howto_add_certificate"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/bb77f42f-dacb-4ece-b3e6-285e63c24d52
Content-type: application/json

{
    "keyCredentials": [
        {
            "customKeyIdentifier": "BB5D1064437D8720A5C53078185E6A361A78B10A",
            "endDateTime": "2023-12-19T15:31:26Z",
            "startDateTime": "2022-12-20T15:31:26Z",
            "type": "AsymmetricX509Cert",
            "usage": "Verify",
            "key": "MIIDADCCAeigAwIBAgIQHfy9G83A5Y5MrBXtWXhCKzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIyMTIyMDAeFw0yMjEyMjAxNTI3MjBaFw0yMzEyMjAxNTQ3MjBaMBMxETAPBgNVBAMMCDIwMjIxMjIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt0dTLXoTqv4RLFE0AQtqkPXDSEMZWifaS+0qL67EDbtLg6wXLsF0vW7k8+gi9CxGq7TIlD431mQ2G6jpeM5GHtG0QaIE/cYrWHH4t9ZHI986LX4nWPt7FhgzQE4AJMG7QGYJVww9qaJAVxFwiCFA2E/ILKT9fz0aVKh6Ld59J+J80VJYSvj1TGqBlwOSSix45L1ZgbdNSfe2UT4po2fTKEGLjMatcHFE4ztQUsBD4bMtBzA8ly+e+Tmu0jk7jrm7bg389usvbp2Oz2+M9SFNubN3aIRvZifY5Rjg6JG6xH897g9cKksKFUScD7QvjCCkEspEcDdbsNa+ZdIYFkL8aQIDAQABo1AwTjAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMB0GA1UdDgQWBBQH5KckLC72C29DEylsuV+E/f9WqTANBgkqhkiG9w0BAQsFAAOCAQEAG6E1HmGGhamFE/dYZox88+OjRRZkYPADZR+6LScY6cWKOSMzgH79pqeftci/QwYV1Nv5/d0LNCH/D6c1Kb0V6PlNZB+oP5bsfJ/mDrtPjNq17Rdv7P4bNqcvCAa50fQ5kATHHniLhA99wZxfuuKjxVuuUZUfd9BOtxBTT1p1tw5Z+ULKxYzbRPlMgUpZnmeQfevi3Qwz0I4zbcfBVmK6LEMPVDsKjYNENNRqersS1OK+zUnjs4yJzqcWf+jgx8EPUoagAlNR+q91tzVph3Mch92M1Hr6Fy7DHCUxQyhimUZhvxsraf+u8DGV2dUsHat5H3diXN1GMj3iNqHWhN4G6Q==",
            "displayName": "CN=20221220"
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
Connect-MgGraph -ClientID acc386fd-706f-4285-b3b5-97fce9019c8a -TenantId 38d49456-54d4-455d-a8d6-c383c71e0a6d -CertificateThumbprint BB5D1064437D8720A5C53078185E6A361A78B10A ## Use the certificate thumbprint

Connect-MgGraph -ClientID acc386fd-706f-4285-b3b5-97fce9019c8a -TenantId 38d49456-54d4-455d-a8d6-c383c71e0a6d -CertificateName CN=20221220 ## Use the certificate subject name
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


ClientId              : acc386fd-706f-4285-b3b5-97fce9019c8a
TenantId              : 38d49456-54d4-455d-a8d6-c383c71e0a6d
CertificateThumbprint : BB5D1064437D8720A5C53078185E6A361A78B10A
Scopes                :
AuthType              : AppOnly
AuthProviderType      : ClientCredentialProvider
CertificateName       :
Account               :
AppName               : appOnlyAuth
ContextScope          : Process
Certificate           :
PSHostVersion         : 5.1.22621.963
ClientTimeout         : 00:05:00


```