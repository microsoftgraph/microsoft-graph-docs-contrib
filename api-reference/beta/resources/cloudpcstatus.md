---
title: "cloudPcDeviceImage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

### cloudPcStatus values

Namespace: microsoft.graph

Possible Cloud PC status types

|Members|Value|Description|
|:---|:---|:---|
|notProvisioned|0|The Cloud PC is currently not provisioned|
|provisioning|1|Cloud PC provisioning is in progress|
|provisioned|2|The Cloud PC is provisioned and can be accessed by end users|
|upgrading|3|The Cloud PC is in the middle of a resize of the machine|
|inGracePeriod|4|The Cloud PC is within one week grace period
|deprovisioning|5|The Cloud PC is deprovisioning|
|upgradeFailed|6|The Cloud PC failed to upgrade|
|provisionFailed|7|The Cloud PC failed to provision|
|deprovisionFailed|8|The Cloud PC failed to deprovision|
|reprovisionFailed|9|The Cloud PC failed to reprovision|
