<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Details</title>
</head>
<body>
		<h1>Train details are</h1>
		
		
		<table border="2px" align="center">
			<tr>
				<th>Train Number</th>
				<th>Train Name</th>
				<th>Train source</th>
				<th>Train Destination</th>
				<th>Train Arrivaltime</th>
				<th>Train Departuretime</th>
				
			</tr>
			
			<tr>
			<th>${searchTrain.trainId }</th>
			<th>${searchTrain.trainName }</th>
			<th>${searchTrain.source }</th>
			<th>${searchTrain.destination }</th>
			<th>${searchTrain.arrivalTime }</th>
			<th>${searchTrain.departureTime }</th>
			</tr>
			
		</table>
		
</body>
</html>