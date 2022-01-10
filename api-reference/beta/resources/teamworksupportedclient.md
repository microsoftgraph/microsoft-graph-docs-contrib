---
title: "teamworkSupportedClient enum type"
description: "Describes the supported client for devices' teams client."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: enumPageType
---

# teamworkSupportedClient enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the supported client of a [teamworkaccountconfiguration](teamworkaccountconfiguration.md).

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|unknown|0|Unknown value.|
|skypeDefaultAndTeams|1|Supports both Skype and Teams, but default is Skype.|
|teamsDefaultAndSkype|2|Supports both Skype and Teams, but default is Teams.|
|skypeOnly|3|Supports only Skype.|
|teamsOnly|4|Supports only Teams.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|

