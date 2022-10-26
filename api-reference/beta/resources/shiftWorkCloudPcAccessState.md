---
title: "shiftWorkCloudPcAccessState resource type"
description: "The access state of the shift work Cloud PC."
author: "ningjingbo"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: enumPageType
---

# shiftWorkCloudPcAccessState enum type

Namespace: microsoft.graph

This enum indicates the access state of the shift work Cloud PC.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unassigned|0|Default. Set to unassigned if the Cloud PC is not consuming any shared use licenses.|
|noLicensesAvailable|1|Indicates the shift work Cloud PC cannot be assigned any sharedUseLicenses as all shared use licenses are in use as of now.|
|activationFailed|2|Indicates the shift work Cloud PC activation failed after user requested the shift work Cloud PC.|
|active|3|Indicates the shift work Cloud PC is in active state with a shared use license assigned and the user could connect to this Cloud PC.|
|activating|4|Indicates the shift work Cloud PC is in activating state after the user requests to connect this Cloud PC, service is working on starting the Cloud PC.|
|waitlisted|5|Indicates the shift work Cloud PC is in waitlisted state after the user requests to connect this Cloud PC and all shared use licenses are being actively used.|
|unknownFutureValue|6|Evolvable enumeration sentinel value. Do not use.|