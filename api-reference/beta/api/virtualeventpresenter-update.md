---
title: "Update virtualEventPresenter"
description: "Update the properties of a virtualEventPresenter object."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 08/02/2024
---

# Update virtualEventPresenter

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

Currently the supported virtual event type is [virtualEventWebinar](../resources/virtualeventwebinar.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventpresenter-update-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventpresenter-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /solutions/virtualEvents/webinars/{webinarId}/presenters/{presenterId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
| presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md) | Other detail information of the presenter. |

## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventPresenter](../resources/virtualeventpresenter.md) object in the response body.

## Examples

### Request

The following example shows how to update a presenter on a **virtualEventWebinar**.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_virtualeventpresenter",
  "sampleKeys": ["88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33", "831affc2-4c8a-9929-50e7-02964563b6e4"]
}
-->
```http
PATCH https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33/presenters/831affc2-4c8a-9929-50e7-02964563b6e4
Content-Type: application/json

{
  "presenterDetails": {
    "bio": {
      "content": "Lead Product Manager of Contoso Sales department",
      "contentType": "text"
    },
    "company": "Contoso",
    "jobTitle": "Product Manager",
    "linkedInProfileWebUrl": "https://linkedin.com/in/DianeDemoss",
    "personalSiteWebUrl": "https://DianeDemoss.com"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-virtualeventpresenter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-virtualeventpresenter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-virtualeventpresenter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-virtualeventpresenter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-virtualeventpresenter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-virtualeventpresenter-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-virtualeventpresenter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventPresenter"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventPresenter",
  "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
  "identity": {
    "@odata.type": "microsoft.graph.communicationsUserIdentity",
    "displayName": "Diane Demoss",
    "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
    "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
  },
  "email": "DianeDemoss@contoso.com",
  "presenterDetails": {
    "company": "Contoso",
    "jobTitle": "Product Manager",
    "personalSiteWebUrl": "https://DianeDemoss.com",
    "linkedInProfileWebUrl": "https://linkedin.com/in/DianeDemoss",
    "twitterProfileWebUrl": null,
    "bio": {
      "content": "Lead Product Manager of Contoso Sales department",
      "contentType": "text"
    }
  }
}
```
