---
title: "Generate proof of possession tokens for rolling keys"
description: "As part of the request validation for the addKey and removeKey methods, a proof of possession token is required. This document provides guidance for generating the proof of possession token."
ms.localizationpriority: high
ms.prod: "applications"
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: saurabh.madan
ms.date: 06/22/2023
---

# Generate proof of possession tokens for rolling keys

You can use the **addKey** and **removeKey** methods defined on the [application](/graph/api/resources/application) and [servicePrincipal](/graph/api/resources/serviceprincipal) resources to roll expiring keys programmatically.

As part of the request validation for these methods, a proof of possession of an existing key is verified before the methods can be invoked. The proof is represented by a self-signed JWT token. This JWT token must be signed using the private key of one of the application's existing valid certificates. The token lifespan should not exceed 10 minutes.

> **Note:** Applications that don't have any existing valid certificates (no certificates have been added yet, or all certificates have expired), can't use this service action. You can use the [Update application](/graph/applications-how-to-add-certificate) operation to perform an update instead.

The token should contain the following claims:

- `aud` - Audience needs to be `00000003-0000-0000-c000-000000000000` which is the **appId** of the Microsoft Graph service principal.
- `iss` - Issuer needs to be the object ID of the application that's making the call (not the appId).
- `nbf` - Not before time.
- `exp` - Expiration time should be "nbf" + 10 mins.

You can use the following code examples to generate this proof of possession token.

# [C#](#tab/csharp)
```csharp
using System;
using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using Microsoft.IdentityModel.Tokens;
using Microsoft.IdentityModel.JsonWebTokens;

namespace MicrosoftIdentityPlatformProofTokenGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            // Configure the following
            string pfxFilePath = "<Path to your certificate file";
            string password = "<Certificate password>";
            string objectId = "<id of the application or servicePrincipal object>";

            // Get signing certificate
            X509Certificate2 signingCert = new X509Certificate2(pfxFilePath, password);

            // audience
            string aud = $"00000003-0000-0000-c000-000000000000";

            // aud and iss are the only required claims.
            var claims = new Dictionary<string, object>()
            {
                { "aud", aud },
                { "iss", objectId }
            };

            // token validity should not be more than 10 minutes
            var now = DateTime.UtcNow;
            var securityTokenDescriptor = new SecurityTokenDescriptor
            {
                Claims = claims,
                NotBefore = now,
                Expires = now.AddMinutes(10),
                SigningCredentials = new X509SigningCredentials(signingCert)
            };

            var handler = new JsonWebTokenHandler();
            var x = handler.CreateToken(securityTokenDescriptor);
            Console.WriteLine(x);
        }
    }
}
```

# [PowerShell](#tab/powershell)

## Prerequisite

- Have a valid client certificate. This sample uses a self-signed certificate for demonstration purposes. To learn how to create a self-signed certificate, see [Create a self-signed public certificate to authenticate your application](/azure/active-directory/develop/howto-create-self-signed-certificate). From the linked sample:
   - The **$cert** variable stores the certificate in the current session and allows you to export it.
   - Export the certificate with a private key in `.pfx` format.

```powershell
# $PfxFilePath represents the path to which you exported the .pfx certificate. 
# $ObjectID is the ID of the service principal or the application for which you are running the addKey or removeKey action that requires this proof of possession token.

param (
    [Parameter(Mandatory = $true)]
    [string]$PfxFilePath,
    
    [SecureString]$Password = (Read-Host 'Provide Certificate Password' -AsSecureString),
    
    [Parameter(Mandatory = $true)]
    [string]$ObjectID
)

# install the following Microsoft Graph PowerShell modules
Install-Module Microsoft.Graph.Authentication -Scope CurrentUser
Import-Module Microsoft.Graph.Authentication

# audience is Microsoft Graph
$aud = "00000003-0000-0000-c000-000000000000"

# aud and iss are the only required claims.
$claims = [System.Collections.Generic.Dictionary[string,object]]::new()
$claims.aud = $aud
$claims.iss = $objectId

# token validity should not be more than 10 minutes
$now = (Get-Date).ToUniversalTime()
$securityTokenDescriptor = [Microsoft.IdentityModel.Tokens.SecurityTokenDescriptor]@{
    Claims = $claims
    NotBefore = $now
    Expires = $now.AddMinutes(10)
    SigningCredentials = [Microsoft.IdentityModel.Tokens.X509SigningCredentials]::new($cert)
}
$handler = [Microsoft.IdentityModel.JsonWebTokens.JsonWebTokenHandler]::new()
$token = $handler.CreateToken($securityTokenDescriptor)
Write-Output $token
```

---

You can also generate the proof using signature in Azure KeyVault. It is important to note that padding character '=' must not be included in the JWT header and payload or an **Authentication_MissingOrMalformed** error will be returned.

## Next steps

Now that you have your proof of possession token, you can use it to:
- [Add a key](/graph/api/application-addkey) or [remove a key](/graph/api/application-removekey) from your application.
- [Add a key](/graph/api/serviceprincipal-addkey) or [remove a key](/graph/api/serviceprincipal-removekey) from your service principal.
