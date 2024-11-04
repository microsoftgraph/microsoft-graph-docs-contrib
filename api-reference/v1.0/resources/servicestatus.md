---
title: "serviceStatus resource type"
description: "Represents the tenant-level service status of the backup service."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# serviceStatus resource type

Namespace: microsoft.graph

Represents the tenant-level service status of the backup service.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|backupServiceConsumer|[backupServiceConsumer](../resources/servicestatus.md#backupserviceconsumer-values)|The type of consumer. The possible values are: `unknown`, `firstparty`, `thirdparty`, `unknownFutureValue`.|
|disableReason|[disableReason](../resources/servicestatus.md#disablereason-values)|The reason the service is disabled. The possible values are: `none`, `controllerServiceAppDeleted`, `invalidBillingProfile`, `userRequested`, `unknownFutureValue`.|
|gracePeriodDateTime|DateTimeOffset|The expiration time of the grace period.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified the entity.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification of the entity.|
|restoreAllowedTillDateTime|DateTimeOffset|The expiration time of the restoration allowed period.|
|status|[backupServiceStatus](../resources/servicestatus.md#backupservicestatus-values)|Status of the service. This value indicates what capabilities can be used. The possible values are: `disabled`, `enabled`, `protectionChangeLocked`, `restoreLocked`, `unknownFutureValue`.|

### backupServiceConsumer values

|Member | Description |
|:------|:------------|
|none | Default value. No consumer is using the service.|
|firstparty | Microsoft Admin Center is the backup service control app.|
|thirdparty | An ISV app is the backup service control app.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

### disableReason values

|Member | Description |
|:------|:------------|
|none | No reason specified.|
|controllerServiceAppDeleted | Controller service app is deleted for this consumer.|
|invalidBillingProfile | Billing profile or Azure subscription status doesn't or is not healthy.|
|userRequested | Service is disabled manually via user action.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

### backupServiceStatus values

|Member | Description |
|:------|:------------|
|disabled | Service is disabled. This is the default state. The service isn't enabled for the tenant.|
|enabled | Service is enabled. A new protection policy can be created or modified and restore is allowed.|
|protectionChangeLocked | Service is locked with no change in protection allowed. A new protection policy can't be created or updated. No new protection items can be added or removed.
When does it happen?
Scenario 1 : Tenant has no Active Service apps.
In this case, if there are no active service apps found for the tenant, the feature status of the tenant will be changed to ProtectionChangeLocked from Enabled. To fix this, tenant needs to activate a service app and call the enable API for the same.
Scenario 2 : Tenant has unhealthy billing profile
In this case, when an unhealthy billing profile is found for a tenant, the feature status is automatically moved to "protectionChangeLocked" from "enabled", and the policies are deactivated right away. To resolve this, tenant needs to update the billing profile with a healthy one and wait for 24-48 hrs to get reflected.|
|restoreLocked | Service is locked with no protection change and no restore. The protection policy can't be created or updated. No new protection items can be added or removed. No restore can be performed.
When does it happen?
When a tenant stays in the "ProtectionChangeLocked" for 30 days, the status changes from "protectionChangeLocked" to "restoreLocked", with this change, restore capabilities are blocked and billing gets stopped as well. To fix this , tenant needs to follow the specific steps depending on the scenarios it belongs to (1 or 2)|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

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
  "backupServiceConsumer": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```
