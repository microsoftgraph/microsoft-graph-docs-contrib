---
title: "Create virtualEventPresenter"
description: "Create a new virtualEventPresenter object to a virtual event."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 08/02/2024
---

# Create virtualEventPresenter

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [virtualEventPresenter](../resources/virtualeventpresenter.md) object on a virtual event.

Currently the supported virtual event types are: [virtualEventTownhall](../resources/virtualeventtownhall.md), [virtualEventWebinar](../resources/virtualeventwebinar.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualevent-post-presenters-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualevent-post-presenters-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /solutions/virtualEvents/townhalls/{townhallId}/presenters
POST /solutions/virtualEvents/webinars/{webinarId}/presenters
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

You can specify the following properties when you create a presenter on a **virtualEventTownhall**:

|Property|Type|Description|
|:---|:---|:---|
|identity|[identity](../resources/identity.md)|Identity information of the presenter. The supported identities are: [communicationsGuestIdentity](../resources/communicationsguestidentity.md) and [communicationsUserIdentity](../resources/communicationsuseridentity.md). |

You can specify the following properties when you create a presenter on a **virtualEventWebinar**:

|Property|Type|Description|
|:---|:---|:---|
|identity|[identity](../resources/identity.md)|Identity information of the presenter. The supported identities are: [communicationsGuestIdentity](../resources/communicationsguestidentity.md) and [communicationsUserIdentity](../resources/communicationsuseridentity.md). |
|presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md)|Other detail information of the presenter.|

## Response

If successful, this method returns a `201 Created` response code and a [virtualEventPresenter](../resources/virtualeventpresenter.md) object in the response body.

## Examples

### Example 1: Create an in-tenant presenter

The following example shows how to create an internal user as a presenter on a **virtualEventTownhall**.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_virtualeventpresenter_internal_",
  "sampleKeys": ["502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742/presenters
Content-Type: application/json

{
  "identity": {
    "@odata.type": "#microsoft.graph.communicationsUserIdentity",
    "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-virtualeventpresenter-internal--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-virtualeventpresenter-internal--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-virtualeventpresenter-internal--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-virtualeventpresenter-internal--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-virtualeventpresenter-internal--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-virtualeventpresenter-internal--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-virtualeventpresenter-internal--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-virtualeventpresenter-internal--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventPresenter"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
  "email": "kenneth.brown@contoso.com",
  "identity": {
    "@odata.type": "#microsoft.graph.communicationsUserIdentity",
    "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
    "displayName": "Kennth Brown",
    "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
  },
  "presenterDetails": null
}
```

### Example 2: Create an out-of-tenant presenter

The following example shows how to create a guest user as a presenter on a **virtualEventTownhall**. 

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_virtualeventpresenter_external",
  "sampleKeys": ["502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742/presenters
Content-Type: application/json

{
  "identity": {
    "@odata.type": "#microsoft.graph.communicationsGuestIdentity",
    "displayName": "Guest Speaker",
    "email": "guest.speaker@fabrikam.com"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-virtualeventpresenter-external-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-virtualeventpresenter-external-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-virtualeventpresenter-external-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-virtualeventpresenter-external-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-virtualeventpresenter-external-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-virtualeventpresenter-external-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-virtualeventpresenter-external-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-virtualeventpresenter-external-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventPresenter"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "184975c0-4096-4a02-b251-c48546691c42",
  "email": "guest.speaker@fabrikam.com",
  "presenterDetails": null,
  "identity": {
    "@odata.type": "#microsoft.graph.communicationsGuestIdentity",
    "id": "184975c0-4096-4a02-b251-c48546691c42",
    "displayName": "Guest Speaker",
    "email": "guest.speaker@fabrikam.com"
  }
}
```
