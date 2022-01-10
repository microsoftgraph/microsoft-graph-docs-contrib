---
title: "teamworkSoftwareType enum type"
description: "Describes the software type to be update."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: enumPageType
---

# teamworkSoftwareType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the software type to be updated in software update [teamworkDeviceOperations](teamworkdeviceoperation.md).

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|adminAgent|0|Admin agent update.|
|operatingSystem|1| Operating system update for rigel devices.|
|teamsClient|2|Teams client update.|
|firmware|3|Firmware update.|
|partnerAgent|4|Partner agent / OEM update.|
|companyPortal|5|Company portal update.|
|unknownFutureValue|6|Evolvable enumeration sentinel value. Do not use.|

