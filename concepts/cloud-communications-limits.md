---
title: "Limits to Cloud Communications APIs in Microsoft Graph"
description: "This contains information about the limits of the Cloud Communications APIs"
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Limits to Cloud Communications APIs in Microsoft Graph

We set limits on API usage to ensure that our platform is stable, reliable, and secure.

#### Calls
Each month, there's a limit of

- **10,000** calls

- **100** concurrent calls

This includes all established incoming and outgoing calls.

#### Meetings
There's a limit of **2000** requests per user

#### Presence (preview)
There's a limit of **2** requests per second

#### See Also
These limits are ***subject to change*** in the future

Once the limit is reached, attempting to make more API requests will result in a `429 Error`.
