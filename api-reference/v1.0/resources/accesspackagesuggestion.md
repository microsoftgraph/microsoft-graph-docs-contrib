---
title: "accessPackageSuggestion resource type"
description: "Represents a suggested access package with associated suggestion reasons for an end user."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 05/14/2026
---

# accessPackageSuggestion resource type

Namespace: microsoft.graph

Represents a suggested access package with associated suggestion reasons in [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md). Access packages are suggested to end users based on various criteria such as related people insights and assignment history.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Filter by current user](../api/accesspackagesuggestions-filterbycurrentuser.md) | [accessPackageSuggestion](accesspackagesuggestion.md) collection | Retrieve suggested access packages for the current end user based on various criteria including related people insights. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The identifier of the suggested access package. Read-only.|
|reasons|Collection([accessPackageSuggestionReason](../resources/accesspackagesuggestionreason.md))|A collection of reasons why this access package is being suggested to the user.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackage|[availableAccessPackage](../resources/availableaccesspackage.md)|The access package information for the suggested package.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageSuggestion"
}-->

```json
{
  "@odata.type": "#microsoft.graph.accessPackageSuggestion",
  "id": "String",
  "reasons": [
    {
      "@odata.type": "microsoft.graph.accessPackageSuggestionReason"
    }
  ],
  "accessPackage": {
    "@odata.type": "microsoft.graph.availableAccessPackage"
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2026-05-14 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageSuggestion resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
