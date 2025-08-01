---
title: "Update synchronizationSchema"
description: "Update the synchronization schema for a given job or template. This method fully replaces the current schema with the one provided in the request. To update the schema of a template, make the call on the application object. You must be the owner of the application."
ms.localizationpriority: medium
doc_type: apiPageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 10/01/2024
---

# Update synchronizationSchema

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the synchronization schema for a given job or template. This method fully replaces the current schema with the one provided in the request. To update the schema of a template, make the call on the application object. You must be the owner of the application.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "synchronization_synchronizationschema_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/synchronization-synchronizationschema-update-permissions.md)]

[!INCLUDE [rbac-synchronization-apis](../includes/rbac-for-apis/rbac-synchronization-apis.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
PUT /servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
PUT /applications/{id}/synchronization/templates/{templateId}/schema
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply the [synchronizationSchema](../resources/synchronization-synchronizationschema.md) object to replace the existing schema with.

## Response

If successful, returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Example 1: Update schema

#### Request
The following example shows a request.

>**Note:** The request object shown here is shortened for readability. Supply all the properties in an actual call.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_synchronizationschema"
}-->
```http
PUT https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
Content-type: application/json

{
    "directories": [
        {
            "name": "Azure Active Directory",
            "objects": [
                {
                    "name": "User",
                    "attributes": [
                        {
                            "name": "userPrincipalName",
                            "type": "string"
                        }
                    ]
                },
            ]
        },
        {
            "name": "Salesforce",
        }
    ],
    "synchronizationRules":[
        {
            "name": "USER_TO_USER",
            "sourceDirectoryName": "Azure Active Directory",
            "targetDirectoryName": "Salesforce",
            "objectMappings": [
                {
                    "sourceObjectName": "User",
                    "targetObjectName": "User",
                    "attributeMappings": [
                        {
                            "source": {},
                            "targetAttributeName": "userName"
                        }
                    ]
                }
            ]
        }
    ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-synchronizationschema-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Add attribute "CustomAttribute" to the target system schema

#### Request
The following example shows a request. It assumes that the attribute "CustomAttribute" doesn't exist in the target directory schema. If it does exist, the attribute is updated. 

>**Note:** The request object shown here is shortened for readability. Supply all the properties in an actual call.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_synchronizationschema_customattribute"
}-->
```http
PUT https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
Content-type: application/json

{
   "directories":[
      {
         "id":"09760868-cafb-47ac-9031-0a3262300427",
         "name":"customappsso",
         "objects":[
            {
               "name":"User",
               "attributes":[
                  {
                     "anchor":false,
                     "caseExact":false,
                     "defaultValue":null,
                     "flowNullValues":false,
                     "multivalued":false,
                     "mutability":"ReadWrite",
                     "name":"urn:ietf:params:scim:schemas:extension:CustomExtensionName:2.0:User:CustomAttribute",
                     "required":false,
                     "type":"String",
                     "apiExpressions":[],
                     "metadata":[],
                     "referencedObjects":[]
                  }
               ]
            }
         ]
      }
   ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-synchronizationschema-customattribute-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```


### Example 3: Add a new attribute mapping to the synchronization rules

#### Request
The following example shows a request. The synchornizationSchema has a one-to-many relationship between **targetAttributeName** and **source** attributes. If your schema doesn't have "timezone" as a target attribute, the service adds a new mapping for extensionAttribute11 --> timezone. If your application has timezone as a target attribute in the schema, the service throws an error because an attribute can only be mapped as a target once. In addition, the attribute must exist in the schema before it can be added to the mappings.

>**Note:** The request object shown here is shortened for readability. Supply all the properties in an actual call.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_synchronizationschema_newattributemapping"
}-->
```http
PUT https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
Content-type: application/json

{
   "@odata.type":"#microsoft.graph.synchronizationSchema",
   "synchronizationRules":[
      {
         "defaultValue":"",
         "exportMissingReferences":false,
         "flowBehavior":"FlowWhenChanged",
         "flowType":"Always",
         "matchingPriority":0,
         "source":{
            "expression":"[extensionAttribute11]",
            "name":"extensionAttribute11",
            "parameters":[],
            "type":"Attribute"
         },
         "targetAttributeName":"timezone"
      }
   ]
}


```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-synchronizationschema-newattributemapping-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update synchronizationschema",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
