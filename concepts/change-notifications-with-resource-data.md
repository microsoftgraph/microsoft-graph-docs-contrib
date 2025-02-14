---
title: "Set up change notifications that include resource data"
description: "Microsoft Graph uses a webhook mechanism to deliver change notifications to clients. Change notifications can include resource properties."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: keylimesoda
ms.topic: concept-article
ms.subservice: "change-notifications"
ms.localizationpriority: high
ms.date: 05/30/2024
#customer intent: As a developer, I want to receive notifications of changed data for specific Microsoft Graph resources, so that I can build apps that process the changes according to the business requirements.
---

<!-- markdownlint-disable MD051 MD024 -->

# Set up change notifications that include resource data (rich notifications)

Microsoft Graph allows apps to subscribe to and receive notifications of changes to resources they're interested in. While you can subscribe to basic change notifications, resources such as Microsoft Teams chat message and presence resources, for example, support rich notifications.

**Rich notifications** include the resource data that changed, allowing your app to run business logic without having to make a separate API call to fetch the changed resource. This article guides you through the process of setting up rich notifications in your application.

## Supported resources

[!INCLUDE [change-notifications-rich-notifications-supported-resources](includes/change-notifications-rich-notifications-supported-resources.md)]

## Resource data in notification payload

Rich notifications include the following resource data in the payload:

- ID and type of the changed resource instance, returned in the **resourceData** property.
- All the property values of that resource instance, encrypted as specified in the subscription, returned in the **encryptedContent** property.
- Or, depending on the resource, specific properties returned in the **resourceData** property. To get only specific properties, specify them as part of the **resource** URL in the subscription, using a `$select` parameter.

## Creating a subscription

Rich notifications are set up in the same way as [basic change notifications](/graph/api/subscription-post-subscriptions), except you **must** specify the following properties:

- **includeResourceData** which should be set to `true` to explicitly request resource data.
- **encryptionCertificate** which contains only the public key that Microsoft Graph uses to encrypt the resource data it returns to your app. For security, Microsoft Graph encrypts the resource data returned in a rich notification. You must provide a public encryption key as part of creating the subscription. For more information on creating and managing encryption keys, see [Decrypting resource data from change notifications](#decrypting-resource-data-from-change-notifications).
- **encryptionCertificateId** which is your own identifier for the certificate. Use this ID to match in each change notification, which certificate to use for decryption.

You must also validate both endpoints as described in [Notification endpoint validation](change-notifications-delivery-webhooks.md#notificationurl-validation). If you choose to use the same URL for both endpoints, you receive and should respond to two validation requests.

### Subscription request example

The following example subscribes to channel messages being created or updated in Microsoft Teams.

<!-- {
  "blockType": "ignored",
  "name": "change-notifications-rich-notifications-subscription-request"
}-->
```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{id}/channels/{id}/messages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Subscription response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{id}/channels/{id}/messages",
  "includeResourceData": true,
  "encryptionCertificateId": "{custom ID}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secret client state}"
}
```

## Subscription lifecycle notifications

Certain events can interfere with change notification flow in an existing subscription. Subscription lifecycle notifications inform you actions to take in order to maintain an uninterrupted flow. Unlike a resource change notification that informs a change to a resource instance, a lifecycle notification is about the subscription itself, and its current state in the lifecycle.

For more information about how to receive and respond to lifecycle notifications, see [Reduce missing subscriptions and change notifications](change-notifications-lifecycle-events.md).

## Validating the authenticity of notifications

Before running business logic based on resource data included in change notifications, you must first verify the authenticity of each change notification. Otherwise, a third party can spoof your app with false change notifications and make it run its business logic incorrectly, which can lead to a security incident.

For basic change notifications that don't contain resource data, simply validate them based on the **clientState** value as described in [Processing the change notification](change-notifications-delivery-webhooks.md#processing-the-change-notification). This validation is acceptable, as you can make subsequent trusted Microsoft Graph calls to get access to resource data, and therefore the impact of any spoofing attempts is limited.

For rich notifications, perform a more thorough validation before processing the data.

In this section, you explore the following validation concepts:

- [Validation tokens in the change notification](#validation-tokens-in-the-change-notification)
- [How to validate](#how-to-validate)
- [Example JWT token](#example-jwt-token)

### Validation tokens in the change notification

A change notification with resource data contains an extra property, **validationTokens**, which contains an array of [JSON Web Tokens](https://datatracker.ietf.org/doc/html/rfc7519) (JWT) generated by Microsoft Graph. Microsoft Graph generates a single token for each distinct app and tenant pair for whom there's an item in the **value** array. Keep in mind that change notifications might contain a mix of items for various apps and tenants that subscribed using the same **notificationUrl**.

> [!NOTE]
> Microsoft Graph doesn't send validation tokens for [change notifications delivered through Azure Event Hubs](change-notifications-delivery.md) because the subscription service doesn't need to validate the **notificationUrl** for Event Hubs.

In the following example, the change notification contains two items for the same app, and for two different tenants, therefore the **validationTokens** array contains two tokens that need to be validated.

```json
{
    "value": [
        {
            "subscriptionId": "76619225-ff6b-4489-96ca-4ef547e78b22",
            "tenantId": "aaaabbbb-0000-cccc-1111-dddd2222eeee",
            "changeType": "created",
            ...
        },
        {
            "subscriptionId": "5cfe2387-163c-4006-81bb-1b5e1e060afe",
            "tenantId": "bbbbcccc-1111-dddd-2222-eeee3333ffff",
            "changeType": "created",
            ...
        }
    ],
    "validationTokens": [
        "eyJ0eXAiOiJKV1QiLCJhb...",
        "cGlkYWNyIjoiMiIsImlkc..."
    ]
}
```

The change notification object is in the structure of the [changeNotificationCollection resource type](/graph/api/resources/changenotificationcollection).

### How to validate

Use the [Microsoft Authentication Library (MSAL)](/entra/msal/overview) to help you handle token validation, or a third-party library for a different platform.

Be mindful of the following principles:

- Make sure to always send an `HTTP 202 Accepted` status code as part of the response to the change notification.
- Respond before validating the change notification, even if validation later fails. That is, respond immediately you receive the change notification whether you store notifications in queues for later processing or you process them on the fly.
- Accepting a change notification prevents unnecessary delivery retries and it also prevents any potential rogue actors from finding out if they passed or failed validation. You can always choose to ignore an invalid change notification after you receive it.

In particular, perform validation on every JWT token in the **validationTokens** collection. If any tokens fail, consider the change notification suspicious and investigate further.

Use the following steps to validate tokens and apps that generate tokens:

1. Validate that the token isn't expired.

2. Validate that the Microsoft identity platform issued the token and that the token isn't tampered with.

    - Obtain the signing keys from the common configuration endpoint: `https://login.microsoftonline.com/common/.well-known/openid-configuration`. Your app can cache this configuration for some time. The configuration is updated frequently as signing keys are rotated daily.
    - Verify the signature of the JWT token using those keys.

    Don't accept tokens issued by any other authority.

3. Validate that the token was issued for your app that is subscribing to change notifications.

    The following steps are part of standard validation logic in JWT token libraries and can typically be executed as a single function call.
    - Validate the "audience" in the token matches your app ID.
    - If you have more than one app receiving change notifications, make sure to check for multiple IDs.

4. **Critical**: Validate that the app that generated the token represents the Microsoft Graph change notification publisher.

    - Check that the `azp` property in the token matches the expected value of `0bf30f3b-4a52-48df-9a82-234910c4a086`.
    - This check ensures that a different app that isn't Microsoft Graph did not send the change notifications.

### Example JWT token

The following example shows the properties included in the JWT token that are needed for validation.

```json
{
  // aud is your app's id
  "aud": "925bff9f-f6e2-4a69-b858-f71ea2b9b6d0",
  "iss": "https://login.microsoftonline.com/9f4ebab6-520d-49c0-85cc-7b25c78d4a93/v2.0",
  "iat": 1624649764,
  "nbf": 1624649764,
  "exp": 1624736464,
  "aio": "E2ZgYGjnuFglnX7mtjJzwR5lYaWvAA==",
  // azp represents the notification publisher and must always be the same value of 0bf30f3b-4a52-48df-9a82-234910c4a086
  "azp": "0bf30f3b-4a52-48df-9a82-234910c4a086",
  "azpacr": "2",
  "oid": "1e7d79fa-7893-4d50-bdde-164260d9c5ba",
  "rh": "0.AX0AtrpOnw1SwEmFzHslx41KkzsP8wtSSt9ImoIjSRDEoIZ9AAA.",
  "sub": "1e7d79fa-7893-4d50-bdde-164260d9c5ba",
  "tid": "9f4ebab6-520d-49c0-85cc-7b25c78d4a93",
  "uti": "mIB4QKCeZE6hK71XUHJ3AA",
  "ver": "2.0"
}
```

### Example: Verifying validation tokens

#### [C#](#tab/csharp)

```csharp
// add Microsoft.IdentityModel.Protocols.OpenIdConnect and System.IdentityModel.Tokens.Jwt nuget packages to your project
public async Task<bool> ValidateToken(string token, string tenantId, IEnumerable<string> appIds)
{
    var configurationManager = new ConfigurationManager<OpenIdConnectConfiguration>(
        "https://login.microsoftonline.com/common/v2.0/.well-known/openid-configuration",
        new OpenIdConnectConfigurationRetriever());
    var openIdConfig = await configurationManager.GetConfigurationAsync();
    var handler = new JwtSecurityTokenHandler();
    try
    {
    handler.ValidateToken(token, new TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateIssuerSigningKey = true,
        ValidateLifetime = true,
        ValidIssuer = $"https://sts.windows.net/{tenantId}/",
        ValidAudiences = appIds,
        IssuerSigningKeys = openIdConfig.SigningKeys
    }, out _);
    return true;
    }
    catch (Exception ex)
    {
    Trace.TraceError($"{ex.Message}:{ex.StackTrace}");
    return false;
    }
}
```

#### [Java](#tab/java)

```java
private boolean IsValidationTokenValid(String[] appIds, String tenantId, String serializedToken) {
    try {
        JwkKeyResolver jwksResolver = new JwkKeyResolver();
        Jws<Claims> token = Jwts.parserBuilder()
        .setSigningKeyResolver(jwksResolver)
        .build()
        .parseClaimsJws(serializedToken);
        Claims body = token.getBody();
        String audience = body.getAudience();
        boolean isAudienceValid = false;
        for(String appId : appIds) {
        isAudienceValid = isAudienceValid || appId.equals(audience);
        }
        boolean isTenantValid = body.getIssuer().endsWith(tenantId + "/");
        return isAudienceValid  && isTenantValid; //nbf,exp and signature are already validated by library
    } catch (Exception e) {
        LOGGER.error("could not validate token");
        LOGGER.error(e.getMessage());
        return false;
    }
}
```

For the Java sample to work, you also need to implement the `JwkKeyResolver`.

```java
package com.example.restservice;

import com.auth0.jwk.JwkProvider;
import com.auth0.jwk.UrlJwkProvider;
import com.auth0.jwk.Jwk;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwsHeader;
import io.jsonwebtoken.SigningKeyResolverAdapter;
import java.security.Key;
import java.net.URI;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class JwkKeyResolver extends SigningKeyResolverAdapter {
    private JwkProvider keyStore;
    private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());
    public JwkKeyResolver() throws java.net.URISyntaxException, java.net.MalformedURLException {
        this.keyStore = new UrlJwkProvider((new URI("https://login.microsoftonline.com/common/discovery/keys").toURL()));
    }
    @Override
    public Key resolveSigningKey(JwsHeader jwsHeader, Claims claims) {
        try {
            String keyId = jwsHeader.getKeyId();
            Jwk pub = keyStore.get(keyId);
            return pub.getPublicKey();
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            return null;
        }
    }
}
```

#### [JavaScript](#tab/javascript)

```javascript
import jwt from 'jsonwebtoken';
import jwksClient from 'jwks-rsa';

const client = jwksClient({
  jwksUri: 'https://login.microsoftonline.com/common/discovery/v2.0/keys'
});

export function getKey(header, callback) {
  client.getSigningKey(header.kid, (err, key) => {
    var signingKey = key.publicKey || key.rsaPublicKey;
    callback(null, signingKey);
  });
}

export function isTokenValid(token, appId, tenantId) {
  return new Promise((resolve) => {
    const options = {
      audience: [appId],
      issuer: [`https://sts.windows.net/${tenantId}/`]
    };
    jwt.verify(token, getKey, options, (err) => {
      if (err) {
        // eslint-disable-next-line no-console
        console.error(err);
        resolve(false);
      } else {
        resolve(true);
      }
    });
  });
}
```

---

## Decrypting resource data from change notifications

The **resourceData** property of a change notification includes only the basic ID and type information of a resource instance. The **encryptedData** property contains the full resource data, encrypted by Microsoft Graph using the public key provided in the subscription. The property also contains values required for verification and decryption. This encryption is done to increase the security of customer data accessed via change notifications. It is your responsibility to secure the private key to ensure that a third party can't decrypt the customer data, even if they manage to intercept the original change notifications.

In this section, you learn the following concepts:

- [Managing encryption keys](#managing-encryption-keys)
- [Decrypting resource data](#decrypting-resource-data)
- [Example: decrypting a notification with encrypted resource data](#example-decrypting-a-notification-with-encrypted-resource-data)

### Managing encryption keys

1. Obtain a certificate with a pair of asymmetric keys.

    - You can use a self-signed certificate, since Microsoft Graph doesn't verify the certificate issuer, and uses the public key only for encryption.
    - Use [Azure Key Vault](/azure/key-vault/key-vault-whatis) to create, rotate, and securely manage certificates. Make sure the keys satisfy the following criteria:

        - The key must be of type `RSA`.
        - The key size must be between 2,048 bits and 4,096 bits.

1. Export the certificate in Base64-encoded X.509 format, and **include only the public key**.

1. When creating a subscription:

    - Provide the certificate in the **encryptionCertificate** property, using the Base64-encoded content that the certificate was exported in.
    - Provide your own identifier in the **encryptionCertificateId** property.

        This identifier allows you to match your certificates to the change notifications you receive, and to retrieve certificates from your certificate store. The identifier can be up to 128 characters.

1. Manage the private key securely, so that your change notification processing code can access the private key to decrypt resource data.

#### Rotating keys

To minimize the risk of a private key becoming compromised, periodically change your asymmetric keys. Follow these steps to introduce a new pair of keys:

1. Obtain a new certificate with a new pair of asymmetric keys. Use it for all new subscriptions being created.

2. Update existing subscriptions with the new certificate key.

    - Make this update part of regular subscription renewal.
    - Or, enumerate all subscriptions and provide the key. Use the [PATCH operation on the subscription](/graph/api/subscription-update) and update the **encryptionCertificate** and **encryptionCertificateId** properties.

3. Keep in mind the following principles:
    - For some time, the old certificate might still be used for encryption. Your app must have access to both old and new certificates to be able to decrypt content.
    - Use the **encryptionCertificateId** property in each change notification to identify the correct key to use.
    - Discard of the old certificate only when you don't see recent change notifications referencing it.

### Decrypting resource data

To optimize performance, Microsoft Graph uses a two-step encryption process:

- It generates a single-use symmetric key, and uses it to encrypt resource data.
- It uses the public asymmetric key (that you provided when subscribing) to encrypt the symmetric key and includes it in each change notification of that subscription.

Always assume that the symmetric key is different for each item in the change notification.

To decrypt resource data, your app should perform the reverse steps, using the properties under **encryptedContent** in each change notification:

1. Use the **encryptionCertificateId** property to identify the certificate to use.

1. Initialize an RSA cryptographic component with the private key. An easy way to initialize an RSA component is to use the [RSACertificateExtensions.GetRSAPrivateKey(X509Certificate2) Method](/dotnet/api/system.security.cryptography.x509certificates.rsacertificateextensions.getrsaprivatekey?view=netframework-4.8&preserve-view=true) with an [X509Certificate2](/dotnet/api/system.security.cryptography.x509certificates.x509certificate2?view=netframework-4.8&preserve-view=true) instance, which contains the private key described in [Managing encryption keys](#managing-encryption-keys).

1. Decrypt the symmetric key delivered in the **dataKey** property of each item in the change notification.

    Use Optimal Asymmetric Encryption Padding (OAEP) for the decryption algorithm.

1. Use the symmetric key to calculate the HMAC-SHA256 signature of the value in **data**.

    Compare it to the value in **dataSignature**. If they don't match, assume the payload is tampered with and don't decrypt it.

1. Use the symmetric key with an Advanced Encryption Standard (AES) (such as the .NET [Aes](/dotnet/api/system.security.cryptography.aes?view=netframework-4.8&preserve-view=true)) to decrypt the content in **data**.

    - Use the following decryption parameters for the AES algorithm:

        - Padding: PKCS7
        - Cipher mode: CBC
    - Set the "initialization vector" by copying the first 16 bytes of the symmetric key used for decryption.

1. The decrypted value is a JSON string that represents the resource instance in the change notification.

### Example: decrypting a notification with encrypted resource data

The following JSON example shows a change notification that includes encrypted property values of a **chatMessage** instance in a channel message. The `@odata.id` value specifies the instance.

```json
{
  "value": [
    {
      "subscriptionId": "76222963-cc7b-42d2-882d-8aaa69cb2ba3",
      "changeType": "created",
      // Other properties typical in a resource change notification
      "resource": "teams('d29828b8-c04d-4e2a-b2f6-07da6982f0f0')/channels('19:f127a8c55ad949d1a238464d22f0f99e@thread.skype')/messages('1565045424600')/replies('1565047490246')",
      "resourceData": {
        "id": "1565293727947",
        "@odata.type": "#Microsoft.Graph.ChatMessage",
        "@odata.id": "teams('88cbc8fc-164b-44f0-b6a6-b59b4a1559d3')/channels('19:8d9da062ec7647d4bb1976126e788b47@thread.tacv2')/messages('1565293727947')/replies('1565293727947')"
      },
      "encryptedContent": {
        "data": "{encrypted data that produces a full resource}",
        "dataSignature": "<HMAC-SHA256 hash>",
        "dataKey": "{encrypted symmetric key from Microsoft Graph}",
        "encryptionCertificateId": "MySelfSignedCert/DDC9651A-D7BC-4D74-86BC-A8923584B0AB",
        "encryptionCertificateThumbprint": "07293748CC064953A3052FB978C735FB89E61C3D"
      }
    }
  ],
  "validationTokens": [
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJSU..."
  ]
}
```

For a full description of the data sent when change notifications are delivered, see [changeNotificationCollection resource type](/graph/api/resources/changenotificationcollection).

#### Decrypt the symmetric key

This section contains some useful code snippets that use C# and .NET for each stage of decryption.

##### [C#](#tab/csharp)

```csharp
// Initialize with the private key that matches the encryptionCertificateId.
X509Certificate2 certificate = <instance of X509Certificate2 matching the encryptionCertificateId property>;
RSA rsa = certificate.GetRSAPrivateKey();
byte[] encryptedSymmetricKey = Convert.FromBase64String(<value from dataKey property>);

// Decrypt using OAEP padding.
byte[] decryptedSymmetricKey = rsa.Decrypt(encryptedSymmetricKey, RSAEncryptionPadding.OaepSHA1);

// Can now use decryptedSymmetricKey with the AES algorithm.
```

##### [Java](#tab/java)

```java
String storename = ""; //name/path of the jks store
String storepass = ""; //password used to open the jks store
String alias = ""; //alias of the certificate when store in the jks store, should be passed as encryptionCertificateId when subscribing and retrieved from the notification
KeyStore ks = KeyStore.getInstance("JKS");
ks.load(new FileInputStream(storename), storepass.toCharArray());
Key asymmetricKey = ks.getKey(alias, storepass.toCharArray());
byte[] encryptedSymmetricKey = Base64.decodeBase64("<value from dataKey property>");
Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA1AndMGF1Padding");
cipher.init(Cipher.DECRYPT_MODE, asymmetricKey);
byte[] decryptedSymmetricKey = cipher.doFinal(encryptedSymmetricKey);
// Can now use decryptedSymmetricKey with the AES algorithm.
```

##### [JavaScript](#tab/javascript)

```javascript
const base64encodedKey = 'base 64 encoded dataKey value';
const asymmetricPrivateKey = 'pem encoded private key';
const decodedKey = Buffer.from(base64encodedKey, 'base64');
const decryptedSymmetricKey = crypto.privateDecrypt(asymmetricPrivateKey, decodedKey);
// Can now use decryptedSymmetricKey with the AES algorithm.
```

---

#### Compare data signature using HMAC-SHA256

##### [C#](#tab/csharp)

```csharp
byte[] decryptedSymmetricKey = <the aes key decrypted in the previous step>;
byte[] encryptedPayload = <the value from the data property, still encrypted>;
byte[] expectedSignature = <the value from the dataSignature property>;
byte[] actualSignature;

using (HMACSHA256 hmac = new HMACSHA256(decryptedSymmetricKey))
{
    actualSignature = hmac.ComputeHash(encryptedPayload);
}
if (actualSignature.SequenceEqual(expectedSignature))
{
    // Continue with decryption of the encryptedPayload.
}
else
{
    // Do not attempt to decrypt encryptedPayload. Assume notification payload has been tampered with and investigate.
}
```

##### [Java](#tab/java)

```java
byte[] decryptedSymmetricKey = "<the aes key decrypted in the previous step>";
byte[] decodedEncryptedData = Base64.decodeBase64("data property from encryptedContent object");
Mac mac = Mac.getInstance("HMACSHA256");
SecretKey skey = new SecretKeySpec(decryptedSymmetricKey, "HMACSHA256");
mac.init(skey);
byte[] hashedData = mac.doFinal(decodedEncryptedData);
String encodedHashedData = new String(Base64.encodeBase64(hashedData));
if (comparisonSignature.equals(encodedHashedData))
{
    // Continue with decryption of the encryptedPayload.
}
else
{
    // Do not attempt to decrypt encryptedPayload. Assume notification payload has been tampered with and investigate.
}
```

##### [JavaScript](#tab/javascript)

```javascript
const decryptedSymmetricKey = []; //Buffer provided by previous step
const base64encodedSignature = 'base64 encoded value from the dataSignature property';
const hmac = crypto.createHmac('sha256', decryptedSymmetricKey);
hmac.write(base64encodedPayload, 'base64');
if(base64encodedSignature === hmac.digest('base64'))
{
    // Continue with decryption of the encryptedPayload.
}
else
{
    // Do not attempt to decrypt encryptedPayload. Assume notification payload has been tampered with and investigate.
}
```

---

#### Decrypt the resource data content

##### [C#](#tab/csharp)

```csharp
Aes aesProvider = Aes.Create();
aesProvider.Key = decryptedSymmetricKey;
aesProvider.Padding = PaddingMode.PKCS7;
aesProvider.Mode = CipherMode.CBC;

// Obtain the initialization vector from the symmetric key itself.
int vectorSize = 16;
byte[] iv = new byte[vectorSize];
Array.Copy(decryptedSymmetricKey, iv, vectorSize);
aesProvider.IV = iv;

byte[] encryptedPayload = Convert.FromBase64String(<value from data property>);

string decryptedResourceData;
// Decrypt the resource data content.
using (var decryptor = aesProvider.CreateDecryptor())
{
  using (MemoryStream msDecrypt = new MemoryStream(encryptedPayload))
  {
      using (CryptoStream csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
      {
          using (StreamReader srDecrypt = new StreamReader(csDecrypt))
          {
              decryptedResourceData = srDecrypt.ReadToEnd();
          }
      }
  }
}

// decryptedResourceData now contains a JSON string that represents the resource.
```

##### [Java](#tab/java)

```java
SecretKey skey = new SecretKeySpec(decryptedSymmetricKey, "AES");
IvParameterSpec ivspec = new IvParameterSpec(Arrays.copyOf(decryptedSymmetricKey, 16));
Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
cipher.init(Cipher.DECRYPT_MODE, skey, ivspec);
String decryptedResourceData = new String(cipher.doFinal(Base64.decodeBase64(encryptedData)));
```

##### [JavaScript](#tab/javascript)

```javascript
const base64encodedPayload = 'base64 encoded value from data property';
const decryptedSymmetricKey = []; //Buffer provided by previous step
const iv = Buffer.alloc(16, 0);
decryptedSymmetricKey.copy(iv, 0, 0, 16);
const decipher = crypto.createDecipheriv('aes-256-cbc', decryptedSymmetricKey, iv);
let decryptedPayload = decipher.update(base64encodedPayload, 'base64', 'utf8');
decryptedPayload += decipher.final('utf8');
```

---

## Related content

- [Subscription resource type](/graph/api/resources/subscription)
