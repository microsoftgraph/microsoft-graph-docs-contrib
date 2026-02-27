---
title: "educationAssignmentResource resource type"
description: "A wrapper object that stores the resources associated with an assignment."
ms.localizationpriority: medium
author: "sharad-sharma-msft"
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Assignment resource
ms.date: 06/10/2024
---

# educationAssignmentResource resource type

Namespace: microsoft.graph

A wrapper object that stores the resources associated with an assignment. 

The wrapper adds the **distributeForStudentWork** property and indicates that this resource is copied to the student submission. If the object isn't copied, each student sees a link to the resource on the assignment. The student won't be able to update this resource. This is a handout from the teacher to the student with nothing to be turned in. If the resource is distributed, each student receives a copy of this resource in the resource list of their submission. Each student is able to modify their copy and submit it for grading.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create](../api/educationassignment-post-resources.md) |[educationAssignmentResource](educationassignmentresource.md)| Create an [assignment resource](../resources/educationassignmentresource.md).|
|[Get](../api/educationassignmentresource-get.md) | [educationAssignmentResource](educationassignmentresource.md) |Get the properties of an [education assignment resource](../resources/educationassignmentresource.md) associated with an [assignment](../resources/educationassignment.md).|
|[Delete](../api/educationassignmentresource-delete.md) | None |Delete a specific [educationAssignmentResource](../resources/educationassignmentresource.md) attached to an assignment. |
|[List dependent resources](../api/educationassignmentresource-list-dependentresources.md) | [educationAssignmentResource](../resources/educationassignmentresource.md) collection |List the dependent [education assignment resources](../resources/educationassignmentresource.md) for a given [education assignment resource](../resources/educationassignmentresource.md).|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|distributeForStudentWork|Boolean|Indicates whether this resource should be copied to each student submission for modification and submission. Required|
|id|String| ID of this resource. Read-only.|
|resource|[educationResource](educationresource.md)|Resource object that has been associated with this assignment.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|dependentResources|[educationAssignmentResource](educationassignmentresource.md) collection|A collection of assignment resources that depend on the parent **educationAssignmentResource**.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationAssignmentResource"
}-->

```json
{
  "distributeForStudentWork": true,
  "id": "String (identifier)",
  "resource": {"@odata.type": "microsoft.graph.educationResource"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationAssignmentResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


