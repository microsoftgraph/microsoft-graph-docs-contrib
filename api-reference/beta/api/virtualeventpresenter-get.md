---
title: "Get presenter"
description: "Read the properties and relationships of a virtualEventPresenter object."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Get presenter
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventsession_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventpresenter-get-permissions.md)]

> [!NOTE]
>
> To use application permissions for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user. This allows the authorized application to access registrants' information from virtual events created by that specific user.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/townhalls/{townhallId}/presenters/{presenterId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventPresenter](../resources/virtualeventpresenter.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventpresenter"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/fc6e8c15-2fd7-1dd5-caa0-87056e6a12be/presenters/831affc2-4c8a-9929-50e7-02964563b6e4
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventPresenter"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
      "@odata.type": "#microsoft.graph.virtualEventPresenter",
      "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
      "identity": {
        "@odata.type": "microsoft.graph.communicationsUserIdentity",
        "displayName": "Diane Demoss",
        "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
        "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
      },
      "email": "DianeDemoss@contoso.com"
    }
}
```
