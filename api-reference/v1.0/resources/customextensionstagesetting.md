---
title: "customExtensionStageSetting resource type"
description: "Defines when to execute an access package custom workflow extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionStageSetting resource type

Namespace: microsoft.graph

Defines when to execute a [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) or [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object.

Inherits from [entity](../resources/entity.md).

To read the **customExtensionStageSettings** objects on a policy, append `?$expand=customExtensionStageSettings` to a [GET accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-get.md) request. For example, `GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/4540a08f-8ab5-43f6-a923-015275799197?$expand=customExtensionStageSettings`.

To delete the **customExtensionStageSettings** objects from a policy, call the [Update accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-update.md) and specify the customExtensionHandlers property as an empty collection.

## Methods

None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String| Identifier of the stage. Inherited from [entity](../resources/entity.md).|
|stage|accessPackageCustomExtensionStage|Indicates the stage of the access package assignment request workflow when the access package custom extension runs. The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[customCalloutExtension](../resources/customcalloutextension.md)|Indicates the custom workflow extension that will be executed at this stage. Nullable. Supports `$expand`.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customExtensionStageSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionStageSetting",
  "id": "String (identifier)",
  "stage": "String"
}
```
