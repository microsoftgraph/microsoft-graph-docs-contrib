---
title: "List myRoles"
description: "Get the myRole resources from the myRoles navigation property."
author: "idwilliams"
ms.localizationpriority: medium
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List myRoles
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the myRole resources from the myRoles navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ManagedTenants.Read.All, ManagedTenants.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/myRoles
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [myRole](../resources/myrole.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_myrole"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/myRoles
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.myRole)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/managedTenants/$metadata#myRoles",
  "value": [
    {
      "tenantId": "06b192f6-991c-4f3a-b4f6-ed85580566cf",
      "assignments": [
        {
          "assignmentType": "delegatedAccessPrivelege",
          "roles": [
            {
              "templateId": "729827e3-9c14-49f7-bb1b-9608f156bbb8",
              "displayName": "Helpdesk Administrator",
              "description": "Can reset passwords for non-administrators and Helpdesk Administrators."
            },
            {
              "templateId": "62e90394-69f5-4237-9190-012177145e10",
              "displayName": "Global Administrator",
              "description": "Can manage all aspects of Azure AD and Microsoft services that use Azure AD identities."
            }
          ]
        },
        {
          "assignmentType": "granularDelegatedAccessPrivelege",
          "roles": [
            {
              "templateId": "3a2c62db-5318-420d-8d74-23affee5d9d5",
              "displayName": "Intune Administrator",
              "description": "Can manage all aspects of the Intune product."
            },
            {
              "templateId": "69091246-20e8-4a56-aa4d-066075b2a7a8",
              "displayName": "Teams Administrator",
              "description": "Can manage the Microsoft Teams service."
            },
            {
              "templateId": "5d6b6bb7-de71-4623-b4af-96380a352509",
              "displayName": "Security Reader",
              "description": "Can read security information and reports in Azure AD and Office 365."
            }
          ]
        }
      ]
    },
    {
      "tenantId": "5618f6-991c-4f3a-b4f6-ed85580566cf",
      "assignments": [
        {
          "assignmentType": "delegatedAccessPrivelege",
          "roles": [
            {
              "templateId": "729827e3-9c14-49f7-bb1b-9608f156bbb8",
              "displayName": "Helpdesk Administrator",
              "description": "Can reset passwords for non-administrators and Helpdesk Administrators."
            }
          ]
        },
        {
          "assignmentType": "granularDelegatedAccessPrivelege",
          "roles": [
            {
              "templateId": "194ae4cb-b126-40b2-bd5b-6091b380977d",
              "displayName": "Security Administrator",
              "description": "Can read security information and reports, and manage configuration in Azure AD and Office 365."
            },
            {
              "templateId": "11451d60-acb2-45eb-a7d6-43d0f0125c13",
              "displayName": "Windows 365 Administrator",
              "description": "Can provision and manage all aspects of Cloud PCs."
            }
          ]
        }
      ]
    }
  ]
}
```
