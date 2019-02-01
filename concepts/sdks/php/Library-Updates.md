# Updates
Periodic updates will become available on an irregular schedule, but current progress is geared toward minimizing the impact of the underlying HTTP calls on the users.

## Models
Model updates are pushed once a significant body of work comes onto the Graph. However, if you would like to use new or beta functionality now, you can exclude the ```setReturnType()``` cast and work directly with the properties in the returned JSON.

```php
$graph->setApiVersion("beta");
		$planResponse = $graph->createRequest("GET", "/plans/{plan_id}")
					          ->execute();
	    $plan = $planResponse->getBody();
		echo $plan['title'];
```

## Contributions
Issues marked "up for grabs" can be contributed to by community members. If you're looking to help out or extend the library's power, we'd love to merge your PR! Contributions will require you to sign a (painless!) contributor license agreement for significant changes.