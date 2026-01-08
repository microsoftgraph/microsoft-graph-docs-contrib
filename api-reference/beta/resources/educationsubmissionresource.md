---
title: "educationSubmissionResource resource type"
description: "A wrapper around a resource for use on a submission."
author: "dipakboyed"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Submission resource
ms.date: 06/08/2024
---

# educationSubmissionResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A wrapper around a resource for use on a submission. The wrapper adds a pointer to the assignment resource if the resource was copied from the assignment.  


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/educationsubmission-list-resources.md) | [educationSubmissionResource](educationsubmissionresource.md) objects |Returns a list of **educationSubmissionResource** objects.|
|[Get](../api/educationsubmissionresource-get.md) | [educationSubmissionResource](educationsubmissionresource.md) |Read properties and relationships of an **educationSubmissionResource** object.|
|[Delete](../api/educationsubmissionresource-delete.md) | None |Delete an **educationSubmissionResource** object. |
|[List dependent resources](../api/educationsubmissionresource-list-dependentresources.md) | [educationSubmissionResource](../resources/educationsubmissionresource.md) collection |List the dependent [education submission resources](../resources/educationsubmissionresource.md) for a given [education submission resource](../resources/educationsubmissionresource.md).|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignmentResourceUrl|String|Pointer to the assignment from which the resource was copied. If the value is `null`, the student uploaded the resource.|
|id|String| Read-only.|
|resource|[educationResource](educationresource.md)|Resource object.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|dependentResources|[educationSubmissionResource](educationsubmissionresource.md) collection|A collection of submission resources that depend on the parent **educationSubmissionResource**.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSubmissionResource"
}-->

```json
{
  "assignmentResourceUrl": "String",
  "id": "String (identifier)",
  "resource": {"@odata.type": "microsoft.graph.educationResource"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationSubmissionResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


