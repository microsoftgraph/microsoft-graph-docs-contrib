---
title: "verifiedPublisher resource type"
description: "Represents the verified publisher of the application."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "xurobertMSFT"
ms.date: 04/03/2024
---

# verifiedPublisher resource type

Namespace: microsoft.graph

Represents the verified publisher of the [application](application.md). For more information, see [Publisher verification](/azure/active-directory/develop/publisher-verification-overview). Verified publishers are set using [setVerifiedPublisher](../api/application-setverifiedpublisher.md) and can only be removed using [unsetVerifiedPublisher](../api/application-unsetverifiedpublisher.md).

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|addedDateTime|DateTimeOffSet| The timestamp when the verified publisher was first added or most recently updated. |
|displayName|String|The verified publisher name from the app publisher's Partner Center account.|
|verifiedPublisherId|String| The ID of the verified publisher from the app publisher's Partner Center account. |


## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.verifiedPublisher"
}-->

```json
{
  "displayName": "String",
  "verifiedPublisherId": "String",
  "addedDateTime": "DateTimeOffSet"
}
```


<!-- uuid: 7a355221-34dd-4579-9bdd-4c3e1909e1bb
2020-09-09 20:45:56 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "verifiedPublisher resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
