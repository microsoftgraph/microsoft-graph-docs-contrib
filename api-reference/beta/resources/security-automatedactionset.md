---
title: "automatedActionSet resource type"
description: "Contains the automated response actions grouped by target entity type for a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# automatedActionSet resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the automated response actions grouped by target entity type in the **automatedActions** property of a [detectionAction](../resources/security-detectionaction.md) for a [detectionRule](../resources/security-detectionrule.md). Each collection identifies the hunting-query output columns used to locate the impacted devices, files, accounts, or email messages for the action.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowFiles|[microsoft.graph.security.fileAction](../resources/security-fileaction.md) collection|File actions that allow files identified by file hash columns in the hunting-query results.|
|blockFiles|[microsoft.graph.security.fileAction](../resources/security-fileaction.md) collection|File actions that block files identified by file hash columns in the hunting-query results.|
|collectInvestigationPackages|[microsoft.graph.security.deviceAction](../resources/security-deviceaction.md) collection|Device actions that collect investigation packages from devices identified in the hunting-query results.|
|disableUsers|[microsoft.graph.security.accountSidAction](../resources/security-accountsidaction.md) collection|Account actions that disable users identified by account SID columns in the hunting-query results.|
|forceUserPasswordResets|[microsoft.graph.security.accountSidAction](../resources/security-accountsidaction.md) collection|Account actions that force password resets for users identified by account SID columns in the hunting-query results.|
|hardDeleteEmails|[microsoft.graph.security.emailAction](../resources/security-emailaction.md) collection|Email actions that permanently delete messages identified in the hunting-query results.|
|initiateInvestigations|[microsoft.graph.security.deviceAction](../resources/security-deviceaction.md) collection|Device actions that initiate investigations on devices identified in the hunting-query results.|
|isolateDevices|[microsoft.graph.security.isolateDeviceAction](../resources/security-isolatedeviceaction.md) collection|Device actions that isolate devices identified in the hunting-query results.|
|markUsersAsCompromised|[microsoft.graph.security.accountObjectIdAction](../resources/security-accountobjectidaction.md) collection|Account actions that mark users as compromised when they're identified by Microsoft Entra object ID columns in the hunting-query results.|
|moveEmailsToDeletedItems|[microsoft.graph.security.emailAction](../resources/security-emailaction.md) collection|Email actions that move messages identified in the hunting-query results to Deleted Items.|
|moveEmailsToInbox|[microsoft.graph.security.emailAction](../resources/security-emailaction.md) collection|Email actions that move messages identified in the hunting-query results to the Inbox.|
|moveEmailsToJunk|[microsoft.graph.security.emailAction](../resources/security-emailaction.md) collection|Email actions that move messages identified in the hunting-query results to Junk Email.|
|restrictAppExecutions|[microsoft.graph.security.deviceAction](../resources/security-deviceaction.md) collection|Device actions that restrict app execution on devices identified in the hunting-query results.|
|runAntivirusScans|[microsoft.graph.security.deviceAction](../resources/security-deviceaction.md) collection|Device actions that run antivirus scans on devices identified in the hunting-query results.|
|softDeleteEmails|[microsoft.graph.security.emailAction](../resources/security-emailaction.md) collection|Email actions that soft-delete messages identified in the hunting-query results.|
|stopAndQuarantineFiles|[microsoft.graph.security.stopAndQuarantineFileAction](../resources/security-stopandquarantinefileaction.md) collection|File actions that stop running files and quarantine them on devices identified in the hunting-query results.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.automatedActionSet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.automatedActionSet",
  "allowFiles": [
    {
      "@odata.type": "microsoft.graph.security.fileAction"
    }
  ],
  "blockFiles": [
    {
      "@odata.type": "microsoft.graph.security.fileAction"
    }
  ],
  "collectInvestigationPackages": [
    {
      "@odata.type": "microsoft.graph.security.deviceAction"
    }
  ],
  "disableUsers": [
    {
      "@odata.type": "microsoft.graph.security.accountSidAction"
    }
  ],
  "forceUserPasswordResets": [
    {
      "@odata.type": "microsoft.graph.security.accountSidAction"
    }
  ],
  "hardDeleteEmails": [
    {
      "@odata.type": "microsoft.graph.security.emailAction"
    }
  ],
  "initiateInvestigations": [
    {
      "@odata.type": "microsoft.graph.security.deviceAction"
    }
  ],
  "isolateDevices": [
    {
      "@odata.type": "microsoft.graph.security.isolateDeviceAction"
    }
  ],
  "markUsersAsCompromised": [
    {
      "@odata.type": "microsoft.graph.security.accountObjectIdAction"
    }
  ],
  "moveEmailsToDeletedItems": [
    {
      "@odata.type": "microsoft.graph.security.emailAction"
    }
  ],
  "moveEmailsToInbox": [
    {
      "@odata.type": "microsoft.graph.security.emailAction"
    }
  ],
  "moveEmailsToJunk": [
    {
      "@odata.type": "microsoft.graph.security.emailAction"
    }
  ],
  "restrictAppExecutions": [
    {
      "@odata.type": "microsoft.graph.security.deviceAction"
    }
  ],
  "runAntivirusScans": [
    {
      "@odata.type": "microsoft.graph.security.deviceAction"
    }
  ],
  "softDeleteEmails": [
    {
      "@odata.type": "microsoft.graph.security.emailAction"
    }
  ],
  "stopAndQuarantineFiles": [
    {
      "@odata.type": "microsoft.graph.security.stopAndQuarantineFileAction"
    }
  ]
}
```