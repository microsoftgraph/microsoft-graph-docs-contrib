# Create domain

Adds a domain to the tenant.  

### Prerequisites
The following **scopes** are required to execute this API: *Directory.ReadWrite.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /domains

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;code&gt;|
| Content-Type  | application/json |

### Request body
In the request body, supply a JSON representation of [domain](../resources/domain.md) object.

> The request body contains the name property for the new domain. Name is the only property that can be specified and it is required. The name property value is the fully qualified domain name to create.

### Response
If successful, this method returns `201, Created` response code and [domain](../resources/domain.md) object in the response body.

> **Important:** If the domain being created is a sub-domain of an existing verified domain in the tenant, it will be created as a verified domain (isVerified property is true); otherwise, it will be created as an unverified domain (isVerified property is false).

### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "create_domain_from_domains"
}-->
```http
POST https://graph.microsoft.com/beta/domains
Content-type: application/json
Content-length: 192

{
  "name": "contoso.com"
}
```
In the request body, supply a JSON representation of [domain](../resources/domain.md) object.
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.domain"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 192

{
  "authenticationType": "authenticationType-value",
  "availabilityStatus": "availabilityStatus-value",
  "isAdminManaged": true,
  "isDefault": true,
  "isInitial": true,
  "isRoot": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create domain",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->