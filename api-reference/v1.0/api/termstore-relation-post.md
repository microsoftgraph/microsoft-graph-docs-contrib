---
title: "Create relation"
description: "Create a new relation object."
author: vishriv
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Create relation
Namespace: microsoft.graph.termStore

Create a new [relation](../resources/termstore-relation.md) object. These are used to create pinned and reused relations between terms or between a term and set. If you create a pinned/reused term between term and set, then **fromTerm**  must be set to *null* in the post body.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "termstore_relation_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/termstore-relation-post-permissions.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /sites/{site-id}/termStore/sets/{set-id}/terms/{term-id}/relations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [relation](../resources/termstore-relation.md) object.

The following table lists the properties that are required when you create the [relation](../resources/termstore-relation.md) object.

|Property|Type|Description|
|:---|:---|:---|
|relationship|microsoft.graph.termStore.relationType|Type of relation to be created. Possible values are: `pin`, `reuse`.|
|set| [microsoft.graph.termStore.set](../resources/termstore-set.md)| The set where the relationship needs to be created.|
|fromTerm| [microsoft.graph.termStore.term](../resources/termstore-term.md) | The term with which the relationship needs to be created.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.termStore.relation](../resources/termstore-relation.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_relation_from_1",
  "sampleKeys": ["microsoft.sharepoint.com,b9b0bc03-cbc4-40d2-aba9-2c9dd9821ddf,6a742cee-9216-4db5-8046-13a595684e74", "27fd2d26-60d3-485c-9420-0c71f74a0cfd", "8861b57a-c777-49e7-826f-47d6afecf80d"]
}
-->

``` http
POST https://graph.microsoft.com/v1.0/sites/microsoft.sharepoint.com,b9b0bc03-cbc4-40d2-aba9-2c9dd9821ddf,6a742cee-9216-4db5-8046-13a595684e74/termStores/27fd2d26-60d3-485c-9420-0c71f74a0cfd/terms/8861b57a-c777-49e7-826f-47d6afecf80d/relations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.termStore.relation",
  "relationship": "pin",
  "fromTerm" : {
    "id" : "b49f64b3-4722-4336-9a5c-56c326b344d4"
  },
  "set" : {
    "id": "95e553ae-a91a-4670-a139-67a6cea285b3"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.termStore.relation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.termStore.relation",
  "id": "052c749c-749c-052c-9c74-2c059c742c05",
  "relationship": "pin",
  "fromTerm" : {
      "id" : "b49f64b3-4722-4336-9a5c-56c326b344d4"
  },
  "toTerm" : {
      "id" : "226e8ee3-f4b6-49d7-92d5-ec9d5475eec5"
  },
  "set" : {
      "id" : "95e553ae-a91a-4670-a139-67a6cea285b3"
  }
}
```

<!--[microsoft.graph.termStore.set]: ../resources/termstore-set.md
[microsoft.graph.termStore.term]: ../resources/termstore-term.md
[microsoft.graph.termStore.relation]: ../resources/termstore-relation.md -->


<!--
{
  "type": "#page.annotation",
  "description": "Create a pinned term entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Pinned term",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/sites:
      /sites/{var}/termStores/{var}/terms/{var}/relations
      Uri path requires navigating into unknown object hierarchy: missing property 'terms' on 'store'. Possible issues:
  	 1) Doc bug where 'terms' isn't defined on the resource.
  	 2) Doc bug where 'terms' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'store' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->


