---
title: "directoryObject: getByIds"
description: "Returns the directory objects specified in a list of IDs. "
author: "keylimesoda"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 04/05/2024
---

# directoryObject: getByIds

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Return the directory objects specified in a list of IDs.

Some common uses for this function are to:

* Resolve IDs returned by functions (that return collections of IDs) such as [getMemberObjects](./directoryobject-getmemberobjects.md) or [getMemberGroups](./directoryobject-getmembergroups.md)  to their backing directory objects.
* Resolve IDs persisted in an external store by the application to their backing directory objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "directoryobject_getbyids" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryobject-getbyids-permissions.md)]

[!INCLUDE [limited-info](../../includes/limited-info.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /directoryObjects/getByIds
```

## Request headers

| Name       | Description|
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required.  |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter   | Type |Description|
|:---------------|:--------|:----------|
|ids|String collection| A collection of IDs for which to return objects. The IDs are GUIDs, represented as strings. You can specify up to 1000 IDs. |
|types|String collection| A collection of resource types that specifies the set of resource collections to search. If not specified, the default is [directoryObject](../resources/directoryobject.md), which contains all of the resource types defined in the directory. Any object that derives from [directoryObject](../resources/directoryobject.md) may be specified in the collection; for example: [user](../resources/user.md), [group](../resources/group.md), and [device](../resources/device.md) objects. <br/><br/>To search for references to a [Cloud Solution Provider](https://partner.microsoft.com/cloud-solution-provider) partner organization specify [directoryObjectPartnerReference](../resources/directoryobjectpartnerreference.md). If not specified, the default is [directoryObject](../resources/directoryobject.md), which contains all of the resource types defined in the directory, except for references to a [Cloud Solution Provider](https://partner.microsoft.com/cloud-solution-provider) partner organization. </br><br/> The values are not case-sensitive.|

## Response

If successful, this method returns a `200 OK` response code and a string collection object in the response body.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryobject_getByIds"
}-->

```http
POST https://graph.microsoft.com/beta/directoryObjects/getByIds
Content-type: application/json

{
    "ids": [
        "84b80893-8749-40a3-97b7-68513b600544",
        "5d6059b6-368d-45f8-91e1-8e07d485f1d0",
        "0b944de3-e0fc-4774-a49a-b135213725ef",
        "b75a5ab2-fe55-4463-bd31-d21ad555c6e0"
    ],
    "types": [
        "user",
        "group",
        "device"
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-getbyids-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/directoryobject-getbyids-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/directoryobject-getbyids-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-getbyids-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-getbyids-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/directoryobject-getbyids-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/directoryobject-getbyids-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/directoryobject-getbyids-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
    "value": [
      {
        "@odata.type": "#microsoft.graph.user",
        "id": "84b80893-8749-40a3-97b7-68513b600544",
        "accountEnabled": true,
        "displayName": "Trevor Jones"
      },
      {
        "@odata.type": "#microsoft.graph.user",
        "id": "5d6059b6-368d-45f8-91e1-8e07d485f1d0",
        "accountEnabled": true,
        "displayName": "Billy Smith"
      },
      {
         "@odata.type": "#microsoft.graph.group",
         "id": "0b944de3-e0fc-4774-a49a-b135213725ef",
         "description": "Pineview School Staff",
         "groupTypes": [
             "Unified"
         ]
      },
      {
         "@odata.type": "#microsoft.graph.device",
         "id": "b75a5ab2-fe55-4463-bd31-d21ad555c6e0",
         "displayName": "e8ba4e98c000002",
         "deviceId": "4c299165-6e8f-4b45-a5ba-c5d250a707ff"
      }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directoryObject: getById",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
