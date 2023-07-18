---
title: "Perform bulkUpload"
description: "Perform a new bulkUpload object."
author: "cmmdesai"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType 
---

# Perform bulkUpload

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Perform a new bulk upload using the synchronization job. Use this API endpoint to ingest data into the Azure AD synchronization service. The synchronization service will apply the mappings associated with the synchronization job and process the incoming data. The rate limit for this API is 40 requests per second. Each request can contain a maximum of 50 user operations in the bulk request **Operations** array.

> [!NOTE]
> This API is in public preview and available for use only with [API-driven inbound provisioning apps](/azure/active-directory/app-provisioning/inbound-provisioning-api-configure-app).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SynchronizationData-User.Upload|
|Delegated (personal Microsoft account)|Not supported|
|Application|SynchronizationData-User.Upload|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/bulkUpload
```

In the API endpoint, `{servicePrincipalId}` refers to the service principal object id and `{jobId}` refers to the provisioning job id.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/scim+json. Required.|

## Request body

In the request body, supply a [bulkUpload](../resources/synchronization-bulkupload.md) request object. Refer to the [examples](#examples) section for sample payloads.

## Response

If successful, the API returns a `202 Accepted` response code. It does not return anything in the response body. The bulk request is staged for execution by the Azure AD provisioning service and is processed immediately. The `Location` key in the response header points to the [provisioning logs endpoint](provisioningobjectsummary-list.md) that can be used to check for the status of the bulk request provisioning.

## Examples

### Example 1: Bulk upload using SCIM Core user and Enterprise User schema

The following bulk request uses the SCIM standard Core User and Enterprise User schema. It has two user operations in the **Operations** array. You can send a maximum of 50 user operations in each bulk request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "bulk_upload_from_SCIM_standard_schema"
}
-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/bulkUpload
Authorization: Bearer <token>
Content-Type: application/scim+json

{
    "schemas": ["urn:ietf:params:scim:api:messages:2.0:BulkRequest"],
    "Operations": [
    {
        "method": "POST",
        "bulkId": "897401c2-2de4-4b87-a97f-c02de3bcfc61",
        "path": "/Users",
        "data": {
            "schemas": ["urn:ietf:params:scim:schemas:core:2.0:User",
            "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"],
            "externalId": "701984",
            "userName": "bjensen@example.com",
            "name": {
                "formatted": "Ms. Barbara J Jensen, III",
                "familyName": "Jensen",
                "givenName": "Barbara",
                "middleName": "Jane",
                "honorificPrefix": "Ms.",
                "honorificSuffix": "III"
            },
            "displayName": "Babs Jensen",
            "nickName": "Babs",
            "emails": [
            {
              "value": "bjensen@example.com",
              "type": "work",
              "primary": true
            }
            ],
            "addresses": [
            {
              "type": "work",
              "streetAddress": "234300 Universal City Plaza",
              "locality": "Hollywood",
              "region": "CA",
              "postalCode": "91608",
              "country": "USA",
              "formatted": "100 Universal City Plaza\nHollywood, CA 91608 USA",
              "primary": true
            }
            ],
            "phoneNumbers": [
            {
              "value": "555-555-5555",
              "type": "work"
            }
            ],
            "userType": "Employee",
            "title": "Tour Guide",
            "preferredLanguage": "en-US",
            "locale": "en-US",
            "timezone": "America/Los_Angeles",
            "active":true,
            "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
                "employeeNumber": "701984",
                "costCenter": "4130",
                "organization": "Universal Studios",
                "division": "Theme Park",
                "department": "Tour Operations",
                "manager": {
                  "value": "89607",
                  "$ref": "../Users/26118915-6090-4610-87e4-49d8ca9f808d",
                  "displayName": "John Smith"
                 }
            }
        }
    },
    {
        "method": "POST",
        "bulkId": "897401c2-2de4-4b87-a97f-c02de3bcfc61",
        "path": "/Users",
        "data": {
            "schemas": ["urn:ietf:params:scim:schemas:core:2.0:User",
            "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"],
            "externalId": "701985",
            "userName": "Kjensen@example.com",
            "name": {
                "formatted": "Ms. Kathy J Jensen, III",
                "familyName": "Jensen",
                "givenName": "Kathy",
                "middleName": "Jane",
                "honorificPrefix": "Ms.",
                "honorificSuffix": "III"
            },
            "displayName": "Kathy Jensen",
            "nickName": "Kathy",
            "emails": [
            {
              "value": "kjensen@example.com",
              "type": "work",
              "primary": true
            }
            ],
            "addresses": [
            {
              "type": "work",
              "streetAddress": "100 Oracle City Plaza",
              "locality": "Hollywood",
              "region": "CA",
              "postalCode": "91618",
              "country": "USA",
              "formatted": "100 Oracle City Plaza\nHollywood, CA 91618 USA",
              "primary": true
            }
            ],
            "phoneNumbers": [
            {
              "value": "555-555-5545",
              "type": "work"
            }
            ],
            "userType": "Employee",
            "title": "Tour Lead",
            "preferredLanguage": "en-US",
            "locale": "en-US",
            "timezone": "America/Los_Angeles",
            "active":true,
            "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
            "employeeNumber": "701984",
            "costCenter": "4130",
            "organization": "Universal Studios",
            "division": "Theme Park",
            "department": "Tour Operations",
            "manager": {
              "value": "89607",
              "$ref": "../Users/26118915-6090-4610-87e4-49d8ca9f808d",
              "displayName": "John Smith"
             }
            }
        }
    }
],
    "failOnErrors": null
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/bulk-upload-from-scim-standard-schema-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bulkUpload"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
    "client-request-id": "92cd10f6-fcc3-5d61-098e-a6dd35e460ef",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/auditLogs/provisioning/?$filter=jobid%20eq%20'API2AAD.b16687d38faf42adb29892cdcaf01c6e.1a03de52-b9c3-4e2c-a1e3-9145aaa8e530'",
    "request-id": "beeb9ea0-f7e4-4fe7-8507-cd834c88f18b"
}
```

### Example 2: Bulk upload using SCIM custom schema namespace

The following bulk request uses the SCIM standard Core User and Enterprise User schema. It also has an additional custom schema namespace called `urn:contoso:employee` with two attributes `HireDate` and `JobCode`.
Notice how the `schemas` array in the data object is updated to include the custom schema namespace. It has two user operations in the **Operations** array. You can send a maximum of 50 user operations in each bulk request.

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "bulk_upload_from_SCIM_custom_schema"
}
-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/bulkUpload
Authorization: Bearer <token>
Content-Type: application/scim+json

{
    "schemas": ["urn:ietf:params:scim:api:messages:2.0:BulkRequest"],
    "Operations": [
    {
        "method": "POST",
        "bulkId": "897401c2-2de4-4b87-a97f-c02de3bcfc61",
        "path": "/Users",
        "data": {
            "schemas": ["urn:ietf:params:scim:schemas:core:2.0:User",
            "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User",
            "urn:contoso:employee"],
            "externalId": "701984",
            "userName": "bjensen@example.com",
            "name": {
                "formatted": "Ms. Barbara J Jensen, III",
                "familyName": "Jensen",
                "givenName": "Barbara",
                "middleName": "Jane",
                "honorificPrefix": "Ms.",
                "honorificSuffix": "III"
            },
            "displayName": "Babs Jensen",
            "nickName": "Babs",
            "emails": [
            {
              "value": "bjensen@example.com",
              "type": "work",
              "primary": true
            }
            ],
            "addresses": [
            {
              "type": "work",
              "streetAddress": "234300 Universal City Plaza",
              "locality": "Hollywood",
              "region": "CA",
              "postalCode": "91608",
              "country": "USA",
              "formatted": "100 Universal City Plaza\nHollywood, CA 91608 USA",
              "primary": true
            }
            ],
            "phoneNumbers": [
            {
              "value": "555-555-5555",
              "type": "work"
            }
            ],
            "userType": "Employee",
            "title": "Tour Guide",
            "preferredLanguage": "en-US",
            "locale": "en-US",
            "timezone": "America/Los_Angeles",
            "active":true,
            "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
                "employeeNumber": "701984",
                "costCenter": "4130",
                "organization": "Universal Studios",
                "division": "Theme Park",
                "department": "Tour Operations",
                "manager": {
                  "value": "89607",
                  "$ref": "../Users/26118915-6090-4610-87e4-49d8ca9f808d",
                  "displayName": "John Smith"
                 }
            },
            "urn:contoso:employee": {
                "HireDate": "2021-05-01T00:00:00-05:00",
                "JobCode": "AB-1002"
            }            
        }
    },
    {
        "method": "POST",
        "bulkId": "897401c2-2de4-4b87-a97f-c02de3bcfc61",
        "path": "/Users",
        "data": {
            "schemas": ["urn:ietf:params:scim:schemas:core:2.0:User",
            "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User",
            "urn:contoso:employee"],
            "externalId": "701985",
            "userName": "Kjensen@example.com",
            "name": {
                "formatted": "Ms. Kathy J Jensen, III",
                "familyName": "Jensen",
                "givenName": "Kathy",
                "middleName": "Jane",
                "honorificPrefix": "Ms.",
                "honorificSuffix": "III"
            },
            "displayName": "Kathy Jensen",
            "nickName": "Kathy",
            "emails": [
            {
              "value": "kjensen@example.com",
              "type": "work",
              "primary": true
            }
            ],
            "addresses": [
            {
              "type": "work",
              "streetAddress": "100 Oracle City Plaza",
              "locality": "Hollywood",
              "region": "CA",
              "postalCode": "91618",
              "country": "USA",
              "formatted": "100 Oracle City Plaza\nHollywood, CA 91618 USA",
              "primary": true
            }
            ],
            "phoneNumbers": [
            {
              "value": "555-555-5545",
              "type": "work"
            }
            ],
            "userType": "Employee",
            "title": "Tour Lead",
            "preferredLanguage": "en-US",
            "locale": "en-US",
            "timezone": "America/Los_Angeles",
            "active":true,
            "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
            "employeeNumber": "701984",
            "costCenter": "4130",
            "organization": "Universal Studios",
            "division": "Theme Park",
            "department": "Tour Operations",
            "manager": {
              "value": "89607",
              "$ref": "../Users/26118915-6090-4610-87e4-49d8ca9f808d",
              "displayName": "John Smith"
             }
            },
            "urn:contoso:employee": {
                "HireDate": "2022-07-15T00:00:00-05:00",
                "JobCode": "AB-1003"
            }            
        }
    }
],
    "failOnErrors": null
}

```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/bulk-upload-from-scim-custom-schema-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bulkUpload"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
    "client-request-id": "92cd10f6-fcc3-5d61-098e-a6dd35e460ef",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/auditLogs/provisioning/?$filter=jobid%20eq%20'API2AAD.b16687d38faf42adb29892cdcaf01c6e.1a03de52-b9c3-4e2c-a1e3-9145aaa8e530'",
    "request-id": "beeb9ea0-f7e4-4fe7-8507-cd834c88f18b"
}
```

### Example 3: Bulk upload for updating an existing user

The following bulk request illustrates how to update attributes of an existing Azure AD user, to change the user's department and set that the user cannot sign in.  This example assumes you have configured a mapping for the **externalId**, **department** and **active** fields, and you have an existing Azure AD user that has attribute matching the **externalId**.  

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
 "name": "bulk_upload_for_update"
}
-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/bulkUpload
Authorization: Bearer <token>
Content-Type: application/scim+json

{
    "schemas": ["urn:ietf:params:scim:api:messages:2.0:BulkRequest"],
    "Operations": [
        {
            "method": "POST",
            "bulkId": "897401c2-2de4-4b87-a97f-c02de3bcfc63",
            "path": "/Users",
            "data": {
                "schemas": ["urn:ietf:params:scim:schemas:core:2.0:User",
                "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"],
                "externalId": "9393001",
                "department": "Ops",
                "active": false
            }
        }
    ]
}

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/bulk_upload_for_update-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bulkUpload"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
    "client-request-id": "92cd20f6-fcc3-5d61-098e-a6dd35e460ef",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/auditLogs/provisioning/?$filter=jobid%20eq%20'API2AAD.b16687d38faf42adb29892cdcaf01c6e.1a03de52-b9c3-4e2c-a1e3-9145aaa8e530'",
    "request-id": "beec9ea0-f7e4-4fe7-8507-cd834c88f18b"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2023-06-27 16:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationJob: bulkUpload",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/servicePrincipals:
      /servicePrincipals/{var}/synchronization/jobs/{var}/bulkUpload
      Uri path requires navigating into unknown object hierarchy: missing property 'jobs' on 'synchronization'. Possible issues:
       1) Doc bug where 'jobs' isn't defined on the resource.
       2) Doc bug where 'jobs' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
       3) Doc bug where 'synchronization' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
