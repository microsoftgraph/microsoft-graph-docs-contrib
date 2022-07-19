---
title: "Create sourceSystemDefinition"
description: "Create a new sourceSystemDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: apiPageType
---

# Create sourceSystemDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new sourceSystemDefinition object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                 |
| :------------------------------------- | :---------------------------------------------------------- |
| Delegated (work or school account)     | EduAdministration.Read, EduAdministration.ReadWrite         |
| Delegated (personal Microsoft account) | Not supported.                                              |
| Application                            | EduAdministration.Read.All, EduAdministration.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/sourceSystems
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.

You can specify the following properties when creating a **sourceSystemDefinition**.

| Property             | Type                                                                                                            | Description                                                    |
| :------------------- | :-------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------- |
| displayName          | String                                                                                                          | Name of the source system. Required.                           |
| userMatchingSettings | [microsoft.graph.industryData.userMatchingSetting](../resources/industrydata-usermatchingsetting.md) collection | A collection of user matching settings by roleGroup. Optional. |
| vendor               | String                                                                                                          | Name of the vendor who supplies the source system. Optional.   |

## Response

If successful, this method returns a `201 Created` response code and a [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_sourcesystemdefinition_from_"
}
-->

```http
POST https://graph.microsoft.com/beta/external/industryData/sourceSystems
Content-Type: application/json
Content-length: 250

{
  "@odata.type": "#microsoft.graph.industryData.sourceSystemDefinition",
  "displayName": "String",
  "userMatchingSettings": [
    {
      "@odata.type": "microsoft.graph.industryData.userMatchingSetting"
    }
  ],
  "vendor": "String"
}
```

### Response

The following is an example of the response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.sourceSystemDefinition"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.sourceSystemDefinition",
  "displayName": "String",
  "userMatchingSettings": [
    {
      "@odata.type": "microsoft.graph.industryData.userMatchingSetting"
    }
  ],
  "vendor": "String"
}
```
