---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->staffMembers()->byBookingStaffMemberId('bookingStaffMember-id')->get()->wait();

```