---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->staffMembers()->byBookingStaffMemberId('bookingStaffMember-id')->delete()->wait();

```