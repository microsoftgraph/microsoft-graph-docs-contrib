---
title: "cloudPcRegionGroup enum type"
description: "Represents the logical geographic group that a region belongs to."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: enumPageType
ms.date: 01/20/2026
---

# cloudPcRegionGroup enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the logical geographic group that a region belongs to for Microsoft-hosted network for backup Cloud PCs. Multiple regions can belong to one region group.

This is an evolvable enumeration. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `norway`, `switzerland`, `southKorea`, `middleEast`, `mexico`, `australasia`, `europe`, `singapore`, `hongKong`, `ireland`, `sweden`, `poland`, `italy`, `spain`, `netherlands`, `brazil`, `israel`, `automatic`, `indonesia`, `taiwan`, `malaysia`, `newZealand`, `austria`, `denmark`, `belgium`, `kenya`.

## Members

| Member             | Description                                                                        |
|:-------------------|:-----------------------------------------------------------------------------------|
| default            | The region belongs to the default region group.                                    |
| australia          | The region belongs to the region group: Australia.                                 |
| canada             | The region belongs to the region group: Canada.                                    |
| usCentral          | The region belongs to the region group: Central US.                                |
| usEast             | The region belongs to the region group: East US.                                   |
| usWest             | The region belongs to the region group: West US.                                   |
| france             | The region belongs to the region group: France.                                    |
| germany            | The region belongs to the region group: Germany.                                   |
| europeUnion        | The region belongs to the region group: European Union.                            |
| unitedKingdom      | The region belongs to the region group: United Kingdom.                            |
| japan              | The region belongs to the region group: Japan.                                     |
| asia               | The region belongs to the region group: Asia.                                      |
| india              | The region belongs to the region group: India.                                     |
| southAmerica       | The region belongs to the region group: South America.                             |
| euap               | The region belongs to the region group: Early Update Access Program.               |
| usGovernment       | The region belongs to the region group: US Government.                             |
| usGovernmentDOD    | The region belongs to the region group: US Government Department of Defense (DOD). |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                  |
| norway             | The region belongs to the region group: Norway.                                    |
| switzerland        | The region belongs to the region group: Switzerland.                               |
| southKorea         | The region belongs to the region group: South Korea.                               |
| middleEast         | The region belongs to the region group: Middle East.                               |
| mexico             | The region belongs to the region group: Mexico.                                    |
| australasia        | The region belongs to the region group: Australasia.                               |
| europe             | The region belongs to the region group: Europe.                                    |
| singapore          | The region belongs to the region group: Singapore.                                 |
| hongKong           | The region belongs to the region group: Hong Kong SAR.                             |
| ireland            | The region belongs to the region group: Ireland.                                   |
| sweden             | The region belongs to the region group: Sweden.                                    |
| poland             | The region belongs to the region group: Poland.                                    |
| italy              | The region belongs to the region group: Italy.                                     |
| spain              | The region belongs to the region group: Spain.                                     |
| netherlands        | The region belongs to the region group: Netherlands.                               |
| brazil             | The region belongs to the region group: Brazil.                                    |
| israel             | The region belongs to the region group: Israel.                                    |
| automatic          | There's no preference for a specific region or region group. Windows 365 service distribute the Cloud PCs across all healthy regions within the chosen grouping to maximize reliability and availability. |
| indonesia          | The region belongs to the region group: Indonesia.                                 |
| taiwan             | The region belongs to the region group: Taiwan.                                    |
| malaysia           | The region belongs to the region group: Malaysia.                                  |
| newZealand         | The region belongs to the region group: New Zealand.                               |
| austria            | The region belongs to the region group: Austria.                                   |
| denmark            | The region belongs to the region group: Denmark.                                   |
| belgium            | The region belongs to the region group: Belgium.                                   |
| kenya              | The region belongs to the region group: Kenya.                                     |
