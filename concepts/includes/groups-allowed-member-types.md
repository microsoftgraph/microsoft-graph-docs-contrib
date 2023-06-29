---
author: Jordanndahl
ms.topic: include
ms.date: 12/21/2022
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

The following table shows the types of members that can be added to either security groups or Microsoft 365 groups.

| Object type             | Member of security group     | Member of Microsoft 365 group |
|-------------------------|-------------------------------|-------------------------------|
| User                   | ![Can be group member][Yes]   | ![Can be group member][Yes]   |
| Security group         | ![Can be group member][Yes]   | ![Cannot be group member][No] |
| Microsoft 365 group    | ![Cannot be group member][No] | ![Cannot be group member][No] |
| Device                 | ![Can be group member][Yes]   | ![Cannot be group member][No] |
| Service principal      | ![Can be group member][Yes]   | ![Cannot be group member][No] |
| Organizational contact | ![Can be group member][Yes]   | ![Cannot be group member][No] |

[Yes]: /graph/images/yesandnosymbols/greencheck.svg
[No]: /graph/images/yesandnosymbols/no.svg