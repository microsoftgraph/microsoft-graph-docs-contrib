---
title: "Generate proof of possession tokens for rolling keys"
description: "As part of the request validation for the addKey and removeKey methods, a proof of possession token is required. This document provides guidance for generating the proof of possession token."
ms.localizationpriority: high
ms.prod: "applications"
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: saurabh.madan
ms.date: 05/05/2023
ms.custom: ai-gen-docs
---

# Generate proof of possession tokens for rolling keys

[!INCLUDE [ai-generated-attribution](../includes/ai-generated-attribution.md)]

You can use the **addKey** and **removeKey** methods defined on the [application](/graph/api/resources/application) and [servicePrincipal](/graph/api/resources/serviceprincipal) resources to roll expiring keys programmatically.

As part of the request validation for these methods, a proof of possession of an existing key is verified before the methods can be invoked. The proof is represented by a self-signed JWT token. This JWT token must be signed using the private key of one of the application's existing valid certificates. The token lifespan should not exceed 10 minutes.

> **Note:** Applications that don't have any existing valid certificates (no certificates have been added yet, or all certificates have expired), won't be able to use this service action. You can use the [Update application](/graph/api/application-update) operation to perform an update instead.

The token should contain the following claims:

- `aud` - Audience needs to be `00000002-0000-0000-c000-000000000000`.
- `iss` - Issuer needs to be the Azure AD __ObjectId__  of the application that is making the call (not the applicationId or clientId).
- `nbf` - Not before time.
- `exp` - Expiration time should be "nbf" + 10 mins.

You can use the following code example to generate this proof of possession token.

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
            string aud = $"00000002-0000-0000-c000-000000000000";

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
```powershell
# Configure the following
$pfxFilePath = "<Path to your certificate file>"
$password = "<Certificate password>"
$objectId = "<id of the application or servicePrincipal object>"

# Get signing certificate
$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2($pfxFilePath, $password)

# audience
$aud = "00000002-0000-0000-c000-000000000000"

# aud and iss are the only required claims.
$claims = @{
    "aud" = $aud
    "iss" = $objectId
}

# token validity should not be more than 10 minutes
$now = Get-Date -Utc
$securityTokenDescriptor = @{
    Claims = $claims
    NotBefore = $now
    Expires = $now.AddMinutes(10)
    SigningCredentials = New-Object Microsoft.IdentityModel.Tokens.X509SigningCredentials($cert)
}

$handler = New-Object Microsoft.IdentityModel.JsonWebTokens.JsonWebTokenHandler
$token = $handler.CreateToken($securityTokenDescriptor)
Write-Output $token
```

---

> **Note:** The proof can be generated using other tools, such as PowerShell or signature using Azure KeyVault. It is important to note that padding character '=' must not be included in the JWT header and payload, or an **Authentication_MissingOrMalformed** error will be returned.
