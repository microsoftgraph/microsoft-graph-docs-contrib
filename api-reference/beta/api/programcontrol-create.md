---
title: "Create programControl (deprecated)"
description: "In the Microsoft Entra access reviews feature, create a new programControl object.  This links an access review to a program."
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "entra-id-governance"
author: "shubhamguptacal"
ms.date: 04/05/2024
---

# Create programControl (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer](../../includes/accessreviews-disclaimer.md)]

In the Microsoft Entra [access reviews](../resources/accessreviews-root.md) feature, create a new [programControl](../resources/programcontrol.md) object.  This links an access review to a program.

Prior to making this request, the caller must have previously

- [created a program](program-create.md) or [retrieved a program](program-list.md), to have the value of `programId` to include in the request,
- [created an access review](accessreview-create.md) or [retrieved an access review](accessreview-get.md), to have the value of `controlId` to include in the request, and
- [retrieved the list of program control types](programcontroltype-list.md), to have the value of `controlTypeId` to include in the request.


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "programcontrol_create" } -->
[!INCLUDE [permissions-table](../includes/permissions/programcontrol-create-permissions.md)]

The signed in user must also be in a directory role that permits them to create a **programControl**. 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /programControls
```
## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
In the request body, supply a JSON representation of a [programControl](../resources/programcontrol.md) object.

The following table shows the properties that are required when you create a program control.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| `programId`              |`String`                | The programId of the program this control is going to become a part of.                             |
| `controlId`              |`String`                | The controlId of the control, in particular the identifier of an access review.                                                |
| `controlTypeId`          |`String`                | The programControlType identifies the type of program control - for example, a control linking to guest access reviews. |

## Response
If successful, this method returns a `201, Created` response code and a [programControl](../resources/programcontrol.md) object in the response body.


## Example
##### Request
In the request body, supply a JSON representation of the [programControl](../resources/programcontrol.md) object.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_programControl_from_programControls"
}-->
```http
POST https://graph.microsoft.com/beta/programControls
Content-type: application/json

{
    "controlId": "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
    "controlTypeId": "6e4f3d20-c5c3-407f-9695-8460952bcc68",
    "programId": "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-programcontrol-from-programcontrols-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-programcontrol-from-programcontrols-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-programcontrol-from-programcontrols-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-programcontrol-from-programcontrols-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-programcontrol-from-programcontrols-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-programcontrol-from-programcontrols-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-programcontrol-from-programcontrols-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-programcontrol-from-programcontrols-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.programControl"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "63b2302c-7e62-43b7-aefb-063ba5bdb853",
  "controlId": "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
  "programId": "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
  "controlTypeId": "6e4f3d20-c5c3-407f-9695-8460952bcc68",
  "displayName": "test",
  "status": "Active",
  "createdDateTime": "2018-05-18T20:26:05.2976279Z"
}
```

## Related content

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[List programControlTypes](../api/programcontroltype-list.md) | [programControlType](../resources/programcontroltype.md) collection| List program control types. |


<!--
{
  "type": "#page.annotation",
  "description": "Create programControl",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
