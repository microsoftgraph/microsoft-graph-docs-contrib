---
title: "Set up Microsoft Graph change notifications with resource data"
description: "Learn how to set up Microsoft Graph change notifications with resource data to receive updated resources directly in the notification payload."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: keylimesoda
ms.topic: concept-article
ms.subservice: "change-notifications"
ms.localizationpriority: high
ms.date: 04/16/2025
#customer intent: As a developer, I want to set up Microsoft Graph change notifications with resource data so that I can receive updated resource information directly in the notification payload.
---

# Set up Microsoft Graph change notifications with resource data

Microsoft Graph enables apps to subscribe to and receive notifications about changes to resources. This article explains how to set up **rich notifications**, which include resource data directly in the notification payload.

Rich notifications remove the need for extra API calls to get updated resources, making it faster and easier to run business logic.

## Supported resources

[!INCLUDE [change-notifications-rich-notifications-supported-resources](includes/change-notifications-rich-notifications-supported-resources.md)]

## Resource data in notification payload

Rich notifications include resource data with these details:

- The ID and type of the changed resource instance, found in the **resourceData** property.
- All property values of the resource instance, encrypted as specified in the subscription, found in the **encryptedContent** property.
- Specific properties of the resource, depending on the resource, or if requested using a `$select` parameter in the **resource** URL of the subscription.

## Create a subscription

To set up rich notifications, follow the same steps as [basic change notifications](/graph/api/subscription-post-subscriptions), but include these required properties:

- **includeResourceData**: Set this to `true` to request resource data.
- **encryptionCertificate**: Provide the public key that Microsoft Graph uses to encrypt the resource data. Learn more in [Decrypting resource data from change notifications](#decrypting-resource-data-from-change-notifications).
- **encryptionCertificateId**: Provide an identifier for the certificate to match notifications with the correct decryption key.

Validate both endpoints as described in [Notification endpoint validation](change-notifications-delivery-webhooks.md#notificationurl-validation). If you use the same URL for both endpoints, you will receive and should respond to two validation requests.

### Example: Subscription request

This example creates a subscription for channel messages in Microsoft Teams.

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
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscription lifecycle notifications

Events can disrupt the flow of change notifications in a subscription. Lifecycle notifications tell you what actions to take to keep the flow uninterrupted. Unlike resource change notifications, lifecycle notifications focus on the subscription's state.

To learn more, see [Reduce missing subscriptions and change notifications](change-notifications-lifecycle-events.md).

## Validate the authenticity of notifications

Always verify the authenticity of change notifications before processing them. This prevents your app from triggering incorrect business logic by using fake notifications from third parties.

For basic notifications, validate them using the **clientState** value as explained in [Processing the change notification](change-notifications-delivery-webhooks.md#processing-the-change-notification). For rich notifications, perform additional validation steps.

### Validation tokens in the change notification

Rich notifications include a **validationTokens** property, which contains an array of [JSON Web Tokens](https://datatracker.ietf.org/doc/html/rfc7519) (JWT). Each token is unique to the app and tenant pair. A change notification might contain a mix of items for various apps and tenants that subscribed using the same **notificationUrl**.

> [!NOTE]
> Microsoft Graph doesn't send validation tokens for [change notifications delivered through Azure Event Hubs](change-notifications-delivery-event-hubs.md) because the subscription service doesn't need to validate the **notificationUrl** for Event Hubs.

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

Use the [Microsoft Authentication Library (MSAL)](/entra/msal/overview) or a third-party library to validate tokens. Follow these steps:

Be mindful of the following principles:

- Respond to the notification with an `HTTP 202 Accepted` status code  immediately.
- Respond before validating the change notification, even if the validation fails later. Respond immediately upon receiving the change notification, whether you store notifications in queues for later processing or process them on the fly.
- Accepting and responding to a change notification prevents unnecessary delivery retries and hides validation results from potential attackers. You can always ignore an invalid change notification after you receive it.

In particular, perform validation on every JWT token in the **validationTokens** collection. If any tokens fail, consider the change notification suspicious and investigate further.

Follow these steps to validate tokens and the apps that generate them:

1. Validate that the token isn't expired.

2. Validate that the Microsoft identity platform issued the token and that it has not been tampered with.

    - Obtain the signing keys from the common configuration endpoint: `https://login.microsoftonline.com/common/.well-known/openid-configuration`. Your app can cache this configuration for some time. The configuration is updated frequently as signing keys are rotated daily.
    - Verify the signature of the JWT token using those keys.

    Don't accept tokens issued by any other authority.

3. Confirm the token was issued for your app.

    The following steps are part of standard validation logic in JWT token libraries and can typically be executed as a single function call.
    - Validate the "audience" in the token matches your app ID.
    - If you have more than one app receiving change notifications, make sure to check for multiple IDs.

4. Validate that the token's `azp` property matches the expected value of `0bf30f3b-4a52-48df-9a82-234910c4a086`, which represents the Microsoft Graph change notification publisher.

### Example JWT token

The following example shows the properties in the JWT token needed for validation.

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

The **resourceData** property in a change notification includes basic ID and type information of a resource instance. The **encryptedData** property has the full resource data, encrypted by Microsoft Graph with the public key provided in the subscription. The property also contains values required for verification and decryption. This encryption is done to increase the security of customer data accessed via change notifications. Secure the private key to ensure that a third party can't decrypt customer data, even if they intercept the original change notifications.

In this section, you learn the following concepts:

> [!div class="checklist"]
> * [Managing encryption keys](#managing-encryption-keys)
> * [Decrypting resource data](#decrypting-resource-data)
> * [Example: decrypting a notification with encrypted resource data](#example-decrypting-resource-data)

### Managing encryption keys

1. Get a certificate with a pair of asymmetric keys.

    - You can use a self-signed certificate, since Microsoft Graph doesn't verify the certificate issuer, and uses the public key only for encryption.
    - Use [Azure Key Vault](/azure/key-vault/key-vault-whatis) to create, rotate, and securely manage certificates. Make sure the keys satisfy the following criteria:

        - The key must be of type `RSA`.
        - The key size must be between 2,048 bits and 4,096 bits.

1. Export the certificate in Base64-encoded X.509 format and **include only the public key**.

1. When creating a subscription:

    - Provide the certificate in the **encryptionCertificate** property, using the Base64-encoded content that the certificate was exported in.
    - Provide your own identifier in the **encryptionCertificateId** property.

        This identifier allows you to match your certificates to the change notifications you receive, and to retrieve certificates from your certificate store. The identifier can be up to 128 characters.

1. Manage the private key securely, so that your change notification processing code can access the private key to decrypt resource data.

#### Rotating keys

Change asymmetric keys periodically to minimize the risk of a private key being compromised. Follow these steps to introduce a new pair of keys:

1. Obtain a new certificate with a new pair of asymmetric keys. Use it for all new subscriptions being created.

2. Update existing subscriptions with the new certificate key.

    - Make this update part of regular subscription renewal.
    - Or, enumerate all subscriptions and provide the key. Use the [PATCH operation on the subscription](/graph/api/subscription-update) and update the **encryptionCertificate** and **encryptionCertificateId** properties.

3. Keep in mind the following principles:
    - The old certificate might still be used for encryption for some time. Your app must have access to both old and new certificates to be able to decrypt content.
    - Use the **encryptionCertificateId** property in each change notification to identify the correct key to use.
    - Discard of the old certificate only when you don't see recent change notifications referencing it.

### Decrypting resource data

To optimize performance, Microsoft Graph uses a two-step encryption process:

- It generates a single-use symmetric key, and uses it to encrypt resource data.
- It uses the public asymmetric key (that you provided when subscribing) to encrypt the symmetric key and includes it in each change notification of that subscription.

Assume the symmetric key is different for each item in the change notification.

To decrypt resource data, your app should perform the reverse steps, using the properties under **encryptedContent** in each change notification:

1. Identify the correct certificate using the **encryptionCertificateId** property.

1. Initialize an RSA cryptographic component with the private key. An easy way to initialize an RSA component is to use the [RSACertificateExtensions.GetRSAPrivateKey(X509Certificate2) Method](/dotnet/api/system.security.cryptography.x509certificates.rsacertificateextensions.getrsaprivatekey?view=netframework-4.8&preserve-view=true) with an [X509Certificate2](/dotnet/api/system.security.cryptography.x509certificates.x509certificate2?view=netframework-4.8&preserve-view=true) instance, which contains the private key described in [Managing encryption keys](#managing-encryption-keys).

1. Decrypt the symmetric key in the **dataKey** property of each item in the change notification using your private key. Use Optimal Asymmetric Encryption Padding (OAEP) as the decryption algorithm.

1. Use the symmetric key to calculate the HMAC-SHA256 signature for the value in **data**. Compare it to the value in **dataSignature**. If they don't match, assume the payload is tampered with, and don't decrypt it.

1. Decrypt the **data** property using the symmetric key with Advanced Encryption Standard (AES), such as the .NET [Aes](/dotnet/api/system.security.cryptography.aes?view=netframework-4.8&preserve-view=true).

    - Use the following decryption parameters for the AES algorithm:

        - Padding: PKCS7.
        - Cipher mode: CBC.
    - Set the "initialization vector" by copying the first 16 bytes of the symmetric key used for decryption.

The decrypted data will be a JSON string representing the resource.

### Example: Decrypting resource data

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

- Configure the [subscription resource type](/graph/api/resources/subscription).
