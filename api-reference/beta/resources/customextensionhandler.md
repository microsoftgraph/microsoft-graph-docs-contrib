---
title: "customExtensionHandler resource type (deprecated)"
description: "Defines when to execute a custom access package workflow extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionHandler resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines when to execute a [custom access package workflow extension](customaccesspackageworkflowextension.md).

Inherits from [entity](entity.md).

## Methods
None.

> [!NOTE]
>
> 1. To read the customExtensionHandler objects on a policy, append `?$expand=customExtensionHandlers` to a [GET accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-get.md) request. For example, `GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/4540a08f-8ab5-43f6-a923-015275799197?$expand=customExtensionHandlers`. For more details, see [Example 2: Retrieve the custom extension handlers for a policy](../api/accesspackageassignmentpolicy-get.md#example-2-retrieve-the-custom-extension-handlers-for-a-policy).
>
> 2. To delete the **customExtensionHandlers** objects from a policy, call the [Update accessPackageAssignmentPolicy](../api/accesspackageassignmentpolicy-update.md) and specify the customExtensionHandlers property as an empty collection. For more details, see [Example 2: Remove the customExtensionHandlers and verifiableCredentialSettings from a policy](../api/accesspackageassignmentpolicy-update.md#example-2-remove-the-customextensionhandlers-and-verifiablecredentialsettings-from-a-policy).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| Identifier of the stage. Inherited from [entity](../resources/entity.md).|
|stage|accessPackageCustomExtensionStage|Indicates the stage of the access package assignment request workflow when the access package custom extension runs. The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Indicates which custom workflow extension will be executed at this stage. Nullable. Supports `$expand`.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customExtensionHandler",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionHandler",
  "id": "String (identifier)",
  "stage": "String"
}
```

