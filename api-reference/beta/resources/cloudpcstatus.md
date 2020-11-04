---
title: "cloudPcStatus enum type"
description: "Cloud PC status types"
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft-cloudpc"
doc_type: enumPageType
---

# cloudPcStatus enum type

Namespace: microsoft.graph

Cloud PC status type

## Members

|Member|Value|Description|
|:---|:---|:---|
|notProvisioned|0|The Cloud PC hasn’t been provisioned.|
|provisioning|1|Cloud PC provisioning is in progress.|
|provisioned|2|The Cloud PC is provisioned and can be accessed by end users.|
|upgrading|3|Cloud PC resize is in progress.|
|inGracePeriod|4|The Cloud PC is in the one week grace period before it’s deprovisioned.|
|deprovisioning|5|The Cloud PC is deprovisioning.|
|upgradeFailed|6|The Cloud PC failed to upgrade|
|provisionFailed|7|The Cloud PC failed to provision|
|deprovisionFailed|8|The Cloud PC failed to deprovision|
|reprovisionFailed|9|The Cloud PC failed to reprovision|
