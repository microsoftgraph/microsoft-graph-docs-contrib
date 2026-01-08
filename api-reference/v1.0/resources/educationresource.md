---
title: "educationResource resource type"
description: "An abstract type that represents the base class for all education-related resource objects in a system."
ms.localizationpriority: medium
author: "mmast-msft"
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# educationResource resource type

Namespace: microsoft.graph

An abstract type that represents the base class for all education-related resource objects in a system.

Base type of the following resources:

- [educationExcelResource](../resources/educationexcelresource.md)
- [educationExternalResource](../resources/educationexternalresource.md)
- [educationFileResource](../resources/educationfileresource.md)
- [educationLinkResource](../resources/educationlinkresource.md)
- [educationMediaResource](../resources/educationmediaresource.md)
- [educationPowerPointResource](../resources/educationpowerpointresource.md)
- [educationSpeakerProgressResource](../resources/educationspeakerprogressresource.md)
- [educationTeamsAppResource](../resources/educationteamsappresource.md)
- [educationWordResource](../resources/educationwordresource.md)

An educationResource is associated with an [assignment](educationassignment.md) and/or [submission](educationsubmission.md), which represents the learning object that is being handed out or handed in. You cannot instantiate a resource directly; you must make a subclass that will represent the type of resource being used.

This resource stores the common properties across all resource types.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|[identitySet](identityset.md)|The individual who created the resource.|
|createdDateTime|DateTimeOffset|Moment in time when the resource was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|displayName|String|Display name of resource.|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|Moment in time when the resource was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationResource"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


