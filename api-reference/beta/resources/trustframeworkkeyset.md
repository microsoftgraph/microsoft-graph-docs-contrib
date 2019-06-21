# TrustFrameworkKeySet

Identity Experience framework stores the secrets which can be used in the policies. The secrets can be passwords, certificates and other files.
Identity Experience framework leverages the JSON Web Key (JWK) standard for the Key Sets. This entity follows the format specified in RFC 7517 Section 5 (https://tools.ietf.org/html/rfc7517#section-5).

## Schema changes

### New types

#### trustFrameworkKeySet entity

This entity represents a key set. The key set holds references to keys. The key set id can be used in the TrustFramework Policy. The framework will take the latest valid key in the system for use.

The id of the trustFrameworkKeySet is expected in the create request. However it can be modified by the service. The modified id will be available in the response and in the location header.

| **Property Name** | **Property Type** | **Is Required?** | **Is Nullable?** | **Description**|
|---|---|---|---|---|
| `id` | string | Yes | No | id of the key set. The id is immutable once it is created.  |
| `keys` | Collection(trustFrameworkKey) | No | No|  Collection of TrustFrameworkKeys (JSON Web Keys)available in the key set. |

#### trustFrameworkKey open complex type

A trustFrameworkKey is equivalent to a JWK(JSON Web Key). TrustFrameworkKey is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. TrustFrameworkKey structure follows the format defined in RFC 7517 Section 4 (https://tools.ietf.org/html/rfc7517#section-4).

| **Property Name** | **Property Type** | **Is Required?** | **Is Nullable?** | **Description**|
|---|---|---|---|---|
| `kid` | string | No | No | The unique identifier for the key.   |
| `kty` | string | Yes | No |  The "kty" (key type) parameter identifies the cryptographic algorithm family used with the key, The valid values are rsa, oct. |
| `use` | string | Yes | No | The "use" (public key use) parameter identifies the intended use of the public key.  The "use" parameter is employed to indicate whether a public key is used for encrypting data or verifying the signature on data. Possible values are    1. "sig" (signature)    2.  "enc" (encryption)   |
| `alg` | string | No | No |  The "alg" (algorithm) parameter identifies the algorithm intended for use with the key.  |
| `x5u` | string | No | No |  The "x5u" (X.509 URL) parameter is a URI [RFC3986] that refers to a resource for an X.509 public key certificate or certificate chain [RFC5280] |
| `x5c` | string | No | No |  The "x5c" (X.509 certificate chain) parameter contains a chain of one or more PKIX certificates [RFC5280]. |
| `x5t` | string | No | No |  The "x5t" (X.509 certificate SHA-1 thumbprint) parameter is a base64url-encoded SHA-1 thumbprint (a.k.a. digest) of the DER encoding of an X.509 certificate [RFC5280]. |
|`e` | string | No | Yes |  RSA Key - public exponent |
|`d` | string | No | Yes |  RSA Key - private exponent. Field cannot be read back. |
| `n` | string | No | Yes |  RSA Key - modulus |
| `p` | string | No | Yes |  RSA Key - first prime. Field cannot be read back. |
| `q` | string | No | Yes |  RSA Key - second prime. Field cannot be read back. |
| `dp` | string | No | Yes |  RSA Key - first exponent. Field cannot be read back. |
| `dq` | string | No | Yes |  RSA Key - second exponent. Field cannot be read back. |
| `qi` | string | No | Yes |  RSA Key - Coefficient. Field cannot be read back. |
| `k` | string | No | Yes |  Symmetric Key for oct key type. Field cannot be read back.   |
| `nbf` | int | No | Yes | This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.) |
| `exp` | int | No | Yes | This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.) |

## Permissions

| **Scope** | **Permission** | **Description** |
|---|---|---|
| TrustFrameworkKeySet.Read.All | Read all the TrustFrameworkKeySets in Tenant. |
| TrustFrameworkKeySet.ReadWrite.All | Read and Write all the TrustFrameworkKeySets in Tenant. |

### Resource operations

|    Method       |    Return Type                    |    Description     |
|--------------------|-------------------------|--------------------------------------|
| List TrustFrameworkKeySets | trustFrameworkKeySet collection | Get all the trustFrameworkKeySets present in the tenant.  |
| Get TrustFrameworkKeySet | trustFrameworkKeySet | Read properties and members of trustFrameworkKeySet.  |
| Create TrustFrameworkKeySet | trustFrameworkKeySet | Create a new trustFrameworkKeySets by posting to the collection.  |
| Delete TrustFrameworkKeySet | None | Delete an trustFrameworkKeySet. |
| PUT TrustFrameworkKeySet | trustFrameworkKeySet | Replace the contents of the trustFrameworkKeySets. The operaion supports Update or Insert semantics.  |

### Actions and functions

#### Action generateKey

This api can be used to generate a key and a secret automatically in the keyset. Caller doesn't have to provide a secret here.

##### Parameters

|Parameter|Type|Required?|Description|
|-|-|-|-|
| `use` | string | Yes | similar to 'use' property of trustFrameworkKey mentioned above. |
| `kty` | string | Yes | similar to 'kty' property of trustFrameworkKey mentioned above. |
| `nbf` | int | No | similar to 'nbf' property of trustFrameworkKey mentioned above. |
| `exp` | int | No | similar to 'exp' property of trustFrameworkKey mentioned above. |

##### Returns

The created trustFrameworkKey.

##### CSDL

```xml
<Action Name="generateKey" IsBound="true">
  <Parameter Name="bindingParameter" Type="microsoft.cpim.api.dataModels.trustFrameworkKeySet" />
  <Parameter Name="use" Type="Edm.String" Unicode="false" />
  <Parameter Name="kty" Type="Edm.String" Unicode="false" />
  <Parameter Name="nbf" Type="Edm.Int64" />
  <Parameter Name="exp" Type="Edm.Int64" />
  <ReturnType Type="microsoft.cpim.api.dataModels.trustFrameworkKey" />
</Action>
```

#### Action uploadSecret

This action can be used to upload a secret to a key set.

##### Parameters

|Parameter|Type|Required?|Description|
|-|-|-|-|
| `use` | string | Yes | similar to 'use' property of trustFrameworkKey mentioned above. |
| `k` | string | No | similar to 'k' property of trustFrameworkKey mentioned above. This is the field which caller will use to send `secret`.  |
| `nbf` | int | No | similar to 'nbf' property of trustFrameworkKey mentioned above. |
| `exp` | int | No | similar to 'exp' property of trustFrameworkKey mentioned above. |

##### Returns

The created trustFrameworkKey.

##### CSDL

```xml
<Action Name="uploadSecret" IsBound="true">
  <Parameter Name="bindingParameter" Type="microsoft.cpim.api.dataModels.trustFrameworkKeySet" />
  <Parameter Name="use" Type="Edm.String" Unicode="false" />
  <Parameter Name="k" Type="Edm.String" Unicode="false" />
  <Parameter Name="nbf" Type="Edm.Int64" />
  <Parameter Name="exp" Type="Edm.Int64" />
  <ReturnType Type="microsoft.cpim.api.dataModels.trustFrameworkKey" />
</Action>
```

#### Action uploadCertificate

This action can be used to upload a certificate to a key set.

##### Parameters

|Parameter|Type|Required?|Description|
|-|-|-|-|
| `key` | string | No |  This is the field for sending certificate content.  |

##### Returns

The created trustFrameworkKey.

##### CSDL

```xml
<Action Name="uploadCertificate" IsBound="true">
  <Parameter Name="bindingParameter" Type="microsoft.cpim.api.dataModels.trustFrameworkKeySet" />
  <Parameter Name="Key" Type="Edm.String" Unicode="false" />
  <ReturnType Type="microsoft.cpim.api.dataModels.trustFrameworkKey" />
</Action>
```

#### Action uploadPkcs12

This action can be used to upload a PKCS 12 format key (PFX) to a key set.

##### Parameters

|Parameter|Type|Required?|Description|
|-|-|-|-|
| `key` | string | No |  This is the field for sending pfx content.  |
| `password` | string | No |  This is the field for sending password to pfx content.  |

##### Returns

The created trustFrameworkKey.

##### CSDL

```xml
<Action Name="uploadPkcs12" IsBound="true">
  <Parameter Name="bindingParameter" Type="microsoft.cpim.api.dataModels.trustFrameworkKeySet" />
  <Parameter Name="Key" Type="Edm.String" Unicode="false" />
  <Parameter Name="Password" Type="Edm.String" Unicode="false" />
  <ReturnType Type="microsoft.cpim.api.dataModels.trustFrameworkKey" />
</Action>
```

#### Function getActiveKey

Returns the currently active key in a TrustFrameworkKeySet. There would be at most only one active key in the key set at a moment.

##### Parameters

This function doesn't require any parameters.

##### Returns

The active trustFrameworkKey.

##### CSDL

```xml
<Function Name="getActiveKey" IsBound="true">
  <Parameter Name="bindingParameter" Type="microsoft.cpim.api.dataModels.trustFrameworkKeySet" />
  <ReturnType Type="microsoft.cpim.api.dataModels.trustFrameworkKey" />
</Function>
```

### Example API calls

#### Use case:  List trustFrameworkKeySets

**Request**
```http
GET https://graph.microsoft.com/beta/trustFramework/keySets
```

**Response**
```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"value": [{
			"id": "B2C_1A_keyset1"
			"keys": [{
					"kid": "keyId",
					"use": "sig",
					"kty": "RSA",
					"e": "sjdn",
					"n": "sldssmdnsdlfmsl"
				}
			]

		}
	]
}

```

#### Use case:  Get trustFrameworkKeySet

**Request**
```http
GET https://graph.microsoft.com/beta/trustFramework/keySets/{id}
```

**Response**
```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"id": "B2C_1A_keyset1"
	"keys": [{
			"kid": "keyId",
			"use": "sig",
			"kty": "RSA",
			"e": "sjdn",
			"n": "sldssmdnsdlfmsl"
		}
	]
}

```

#### Use case: Create trustFrameworkKeySet

The id of the trustFrameworkKeySet is expected in the create request. However it can be modified by the service. The modified id will be available in the response and in the location header.

**Request**
```http
POST https://graph.microsoft.com/beta/trustFramework/keySets
Content-type: application/json
{
	"id": "keyset1"
}
```

**Response**
```http
HTTP/1.1 201 Created
Content-type: application/json
{
	"id": "B2C_1A_keyset1"
	"keys": []
}
```

#### Use case:  Put trustFrameworkKeySet
The operation will replace the content of the key set. It supports update semantics only. Specifying id in the request payload is optional.

**Request**
```http
PUT https://graph.microsoft.com/beta/trustFramework/keySets/{id}
Content-type: application/json
{
	"keys": [{
			"kid": "keyId",
			"use": "sig",
			"kty": "RSA",
			"e": "sjdn",
			"n": "sldssmdnsdlfmsl"
		}
	]
}
```

**Response**
```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"id": "B2C_1A_keyset1"
	"keys": [{
			"kid": "keyId",
			"use": "sig",
			"kty": "RSA",
			"e": "sjdn",
			"n": "sldssmdnsdlfmsl"
		}
	]
}

```
#### Use case:  Delete trustFrameworkKeySet
Delete TrustFrameworkKeySet. The TrustFrameworkKeySet is moved to bin from where it can be restored or deleted forever.

**Request**
```http
Delete https://graph.microsoft.com/beta/trustFramework/keySets/{id}
```

**Response**
```http
HTTP/1.1 204 No Content
```

#### Use case:  Generate a Key in the Key Set

**Request**
```http
POST https://graph.microsoft.com/beta/trustFramework/keySets/{id}/generateKey
{
	"use": "sig",
	"kty": "RSA",
	"nbf": "1508969811",
	"exp": "1508973711",
}

```

**Response**
```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"kid": "lmsdlfmsldlsdsdsd",
	"use": "sig",
	"kty": "RSA",
	"nbf": "1508969811",
	"exp": "1508973711"
}
```

#### Use case:  Upload a secret in the Key Set

**Request**
```http
POST https://graph.microsoft.com/beta/trustFramework/keySets/{id}/uploadSecret
{
	"use": "sig",
	"k": "sdkalsdasdlasdlvasdasdbvlabdlv",
	"nbf": "1508969811",
	"exp": "1508973711",
}

```

**Response**
```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"kid": "lmsdlfmsldlsdsdsd",
	"use": "sig",
	"kty": "OCT",
	"nbf": "1508969811",
	"exp": "1508973711"
}
```

#### Use case:  Upload a certificate in the Key Set

**Request**
```http
POST https://graph.microsoft.com/beta/trustFramework/keySets/{id}/uploadCertificate
{
	"key": "sdkalsdasdlasdlvasdasdbvlabdlv"
}

```

**Response**
```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"kid": "lmsdlfmsldlsdsdsd",
	"use": "sig",
	"kty": "OCT",
	"nbf": "1508969811",
	"exp": "1508973711"
}
```

#### Use case:  Upload pfx in the Key Set

**Request**
```http
POST https://graph.microsoft.com/beta/trustFramework/keySets/{id}/uploadPkcs12
{
	"key": "sdkalsdasdlasdlvasdasdbvlabdlv",
  "password": "skdjskdj"
}

```

**Response**
```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"kid": "lmsdlfmsldlsdsdsd",
	"use": "sig",
	"kty": "OCT",
	"nbf": "1508969811",
	"exp": "1508973711"
}
```

#### Use case:  getActiveKey Function
Get the currently active key in the keyset.

**Request**
```http
GET https://graph.microsoft.com/beta/trustFramework/keySets/{id}/getActiveKey
```

**Response**
```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"kid": "keyId",
	"use": "sig",
	"kty": "RSA",
	"e": "sjdn",
	"n": "sldssmdnsdlfmsl"
}

```
