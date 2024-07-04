---
title: "List virtualEventTownhall objects"
description: "Get a list of the virtualEventTownhall objects and their properties."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List virtualEventTownhall objects

Namespace: microsoft.graph



Get a list of the [virtualEventTownhall](../resources/virtualeventtownhall.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventsroot-list-townhalls-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsroot-list-townhalls-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/townhalls
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventTownhall](../resources/virtualeventtownhall.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_virtualeventtownhall"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/townhalls
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventTownhall)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.virtualEventTownhall",
      "id": "fc6e8c15-2fd7-1dd5-caa0-87056e6a12be",
      "status": "String",
      "displayName": "String",
      "description": {
        "@odata.type": "microsoft.graph.itemBody"
      },
      "startDateTime": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "endDateTime": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "createdBy": {
        "@odata.type": "microsoft.graph.communicationsIdentitySet"
      },
      "audience": "String",
      "coOrganizers": [
        {
          "@odata.type": "microsoft.graph.communicationsUserIdentity"
        }
      ],
      "invitedAttendees": [
        {
          "@odata.type": "microsoft.graph.identity"
        }
      ],
      "isInviteOnly": "Boolean"
    }
  ]
}
```

