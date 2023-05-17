---
title: "directoryObject: getByIds"
description: "Returns the directory objects specified in a list of IDs."
author: "keylimesoda"
ms.localizationpriority: high
ms.prod: "directory-management"
doc_type: apiPageType
---

# directoryObject: getByIds

Namespace: microsoft.graph

Return the directory objects specified in a list of IDs.

>[!NOTE]
>This API has a [known issue](/graph/known-issues#incomplete-objects-when-using-getbyids-request). Not all directory objects returned are the full objects containing all their properties.

Some common uses for this function are to:

* Resolve IDs returned by functions (that return collections of IDs) such as [getMemberObjects](directoryobject-getmemberobjects.md) or [getMemberGroups](directoryobject-getmembergroups.md)  to their backing directory objects.
* Resolve IDs persisted in an external store by the application to their backing directory objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.Read.All |

[!INCLUDE [limited-info](../../includes/limited-info.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /directoryObjects/getByIds
```

## Request headers

| Name       | Description|
|:---------------|:--------|
| Authorization  | Bearer {token}. Required. |
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
  "name": "directoryobject_getById"
}-->

```http
POST https://graph.microsoft.com/v1.0/directoryObjects/getByIds
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
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-getbyid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/directoryobject-getbyid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-getbyid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-getbyid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/directoryobject-getbyid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/directoryobject-getbyid-powershell-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
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
<!-- {
  "type": "#page.annotation",
  "description": "directoryObject: getById",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

