---
title: "serviceStatus resource type"
description: "Represents tenant level service status related to Backup service."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# serviceStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant level service status related to Backup service.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|backupServiceConsumer|[backupServiceConsumer](../resources/servicestatus.md#backupserviceconsumer-values)|The type of consumer. The possible values are: `unknown`, `firstparty`, `thirdparty`, `unknownFutureValue`.|
|disableReason|[disableReason](../resources/servicestatus.md#disablereason-values)|The reason of service disablement. The possible values are: `none`, `invalidBillingProfile`, `userRequested`, `unknownFutureValue`.|
|gracePeriodDateTime|DateTimeOffset|The expiration time of the grace period.|
|restoreAllowedTillDateTime|DateTimeOffset|The expiration time of the restoration allowed period.|
|status|[backupServiceStatus](../resources/servicestatus.md#backupservicestatus-values)|Status of the service. This also controls what capabilities can be used with different statuses. The possible values are: `disabled`, `enabled`, `protectionChangeLocked`, `restoreLocked`, `unknownFutureValue`.|

### backupServiceConsumer values

This represents the type of consumer that is using the service.

|Member | Description |
|:------|:------------|
|none | Default value. No consumer is using the service.|
|firstparty | Microsoft Admin Center is Backup service control app.|
|thirdparty | An ISV app is Backup service control app.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

### disableReason values

This represents the reason for locking the service.

|Member | Description |
|:------|:------------|
|none | No reason specified.|
|invalidBillingProfile | Billing profile or Azure subscription status does not exist or is not healthy.|
|userRequested | Service is disabled manually via user action.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

### backupServiceStatus values

This represents current status of the service.

|Member | Description |
|:------|:------------|
|disabled | Service is disabled. This is the default state. Service is not enabled for the tenant.|
|enabled | Service is enabled. New protection policy can be created/modified and restore is allowed.|
|protectionChangeLocked | Service is locked with no change in protection allowed. New protection policy can't be created or updated. No new protection items can be added or removed.|
|restoreLocked | Service is locked with no protection change and no restore. Protection policy can't be created or updated. No new protection items can be added or removed. No restore can be performed.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceStatus",
  "status": "String",
  "gracePeriodDateTime": "String (timestamp)",
  "restoreAllowedTillDateTime": "String (timestamp)",
  "disableReason": "String",
  "backupServiceConsumer": "String"
}
```
