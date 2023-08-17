---
title: "Perform bulkUpload"
description: "Perform a new bulkUpload."
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

> [!NOTE]
> This API is primarily meant for use within an application or service responsible for processing authoritative identity data and uploading it to Azure AD. Tenant admins can either [configure a service principal or managed identity](/azure/active-directory/app-provisioning/inbound-provisioning-api-grant-access) to grant permission to perform the upload. There is no separate user-assignable Azure AD built-in directory role for this API. Outside of applications that have acquired `SynchronizationData-User.Upload` permission with admin consent, only admin users with *Global Administrator* role can invoke the API.

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

In the request body, supply a [bulkUpload](../resources/synchronization-bulkupload.md) resource type. Refer to the [examples](#examples) section for sample payloads.

## Response

| HTTP Status Code | Explanation |
|:---|:---|
| 202 (Accepted) | The bulk request is staged for execution and will be processed by the associated provisioning job. The `Location` key in the response header points to the [provisioning logs endpoint](provisioningobjectsummary-list.md) that can be used to check the status of the bulk request provisioning. |
| 400 (Bad Request) | Request is unparsable, syntactically incorrect or violates the schema. The most common cause of this error is the absence of the request header `Content-Type`. Make sure it is present and set to `application/scim+json`.|
| 401 (Unauthorized) | The authorization header is invalid or missing. Ensure that the authorization header has a valid access token. |
| 403 (Forbidden) |  Operation is not permitted based on the supplied authorization. Make sure that the API client has the Graph API permission `SynchronizationData-User.Upload`.|

## Examples

* [Example 1: Bulk upload using SCIM Core user and Enterprise User schema](#example-1-bulk-upload-using-scim-core-user-and-enterprise-user-schema)
* [Example 2: Bulk upload using SCIM custom schema namespace](#example-2-bulk-upload-using-scim-custom-schema-namespace)
* [Example 3: Bulk upload for updating an existing user](#example-3-bulk-upload-for-updating-an-existing-user)
* [Example 4: Bulk upload for deleting an existing user](#example-4-bulk-upload-for-deleting-an-existing-user)

### Example 1: Bulk upload using SCIM Core user and Enterprise User schema

The following bulk request uses the SCIM standard Core User and Enterprise User schema. It has two user operations in the **Operations** array. You can send a maximum of 50 user operations in each bulk request.

**Processing details:** The provisioning service will read the two user records. It will use the matching attribute (`userName` / `externalId`) configured in the attribute mapping of the provisioning job to determine whether to create, update, enable, or disable the user account in the directory. It will resolve the manager reference using the `manager.value` field. Specify the `externalId` of the user's manager in this field. In the example below, the provisioning service will assign *Barbara Jensen* as the manager for *Kathy Jensen*.

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
        "bulkId": "701984",
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
                  "displayName": "John Smith"
                 }
            }
        }
    },
    {
        "method": "POST",
        "bulkId": "701985",
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
                "value": "701984",
                "displayName": "Barbara Jensen"
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
```http
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

The following bulk request uses the SCIM standard Core User and Enterprise User schema. It also has an additional custom schema namespace called `urn:contoso:employee` with two attributes `HireDate` and `JobCode`. The `schemas` array in the data object is updated to include the custom schema namespace.

**Processing details:** The provisioning service will read the two user records. It will use the matching attribute (`userName` / `externalId`) configured in the attribute mapping of the provisioning job to determine whether to create, update, enable, or disable the user account in the directory. If you have included the two custom attributes `urn:contoso:employee:HireDate` and `urn:contoso:employee:JobCode` in your provisioning job attribute mapping, it will be processed, and the corresponding target attributes will be set.

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
        "bulkId": "701984",
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
        "bulkId": "701985",
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
                "value": "701984",
                "displayName": "Barbara Jensen"
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
```http
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
            "bulkId": "7172023",
            "path": "/Users",
            "data": {
                "schemas": ["urn:ietf:params:scim:schemas:core:2.0:User",
                "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"],
                "externalId": "7172023",
                "active": false,
                "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
                    "department": "Tour Ops"
                }
            }
        }
    ],
    "failOnErrors": null
}
```

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

### Example 4: Bulk upload for deleting an existing user

The following bulk request illustrates how to delete an existing Azure AD or on-premises AD user.  This example assumes you have configured a mapping that uses **externalId** as the matching identifier.  

> [!NOTE]
> If the target directory for the operation is Azure AD, then the matched user is soft-deleted. The user can be seen on the Microsoft Azure portal **Deleted users** page for the next 30 days and can be restored during that time.
> If the target directory for the operation is on-premises Active Directory, then the matched user is hard-deleted. If the **Active Directory Recycle Bin** is enabled, you can restore the deleted on-premises AD user object.
> To prevent and recover from accidental deletions, we recommend [configuring accidental deletion threshold](/azure/active-directory/app-provisioning/accidental-deletions) in the provisioning app and [enabling the on-premises Active Directory recycle bin](/azure/active-directory/hybrid/connect/how-to-connect-sync-recycle-bin).

<!-- {
  "blockType": "request",
  "name": "bulk_upload_for_delete"
} 
-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/bulkUpload
Authorization: Bearer <token>
Content-Type: application/scim+json

{
    "schemas": [
        "urn:ietf:params:scim:api:messages:2.0:BulkRequest"
    ],
    "Operations": [
        {
            "method": "DELETE",
            "bulkId": "7172023",
            "path": "/Users",
            "data": {
                "schemas": [
                    "urn:ietf:params:scim:schemas:core:2.0:User",
                    "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"
                ],
                "externalId": "7172023"
            }
        }
    ]
}
```

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
    "client-request-id": "92cd30f6-fcc3-5d61-098e-a6dd35e460ef",
    "content-length": "0",
    "location": "https://graph.microsoft.com/beta/auditLogs/provisioning/?$filter=jobid%20eq%20'API2AAD.b16687d38faf42adb29892cdcaf01c6e.1a03de52-b9c3-4e2c-a1e3-9145aaa8e530'",
    "request-id": "beec9ea0-f7e3-4fe7-8507-cd834c88f18b"
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
