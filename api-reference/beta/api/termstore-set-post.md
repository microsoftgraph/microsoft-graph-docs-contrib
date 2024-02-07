---
title: "Create set"
description: "Create a new set object."
author: mohitpcad
ms.localizationpriority: medium
ms.prod: sites-and-lists
doc_type: apiPageType
---

# Create set
Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [set](../resources/termstore-set.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "termstore_set_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/termstore-set-post-permissions.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /termStore/sets
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [set](../resources/termstore-set.md) object.

The following table lists the properties that are required when you create the [set](../resources/termstore-set.md).

|Property|Type|Description|
|:---|:---|:---|
|localizedNames|[microsoft.graph.termstore.localizedName](../resources/termstore-localizedname.md) collection|Name of the set to be created|
|parentGroup|[microsoft.graph.termstore.group](../resources/termstore-group.md)|termstore-group under which the set needs to be created|



## Response

If successful, this method returns a `201 Created` response code and a [set](../resources/termstore-set.md) object in the response body.

## Examples

### Request
``` http
POST https://graph.microsoft.com/beta/termStore/sets
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.termStore.set",
  "parentGroup":{
      "id": "fc733b51-10f1-40fd-b784-dc6d1e42804b"
   },
   "localizedNames" : [
      {
        "languageTag" : "en-US",
        "name" : "Department"
      }
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.termstore.set"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.termStore.set",
  "id": "3607e9f9-e9f9-3607-f9e9-0736f9e90736",
  "localizedNames" : [
      {
        "languageTag" : "en-US",
        "name" : "Department"
      }
  ]
}
```


[microsoft.graph.termStore.set]: ../resources/termstore-set.md
[microsoft.graph.termStore.group]: ../resources/termstore-group.md
[microsoft.graph.termStore.term]: ../resources/termstore-term.md

<!--
{
  "type": "#page.annotation",
  "description": "Create a termSet entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Create termSet",
  "suppressions": [
  ]
}
-->


