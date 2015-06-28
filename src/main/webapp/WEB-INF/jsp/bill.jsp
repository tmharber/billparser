<!doctype html>
<html ng-app="billApp">
    <head>
        <title>Your Bill</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <!-- Include the AngularJS library -->
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.5/angular.min.js"></script>

        <!-- BillParser script -->
        <script type="text/javascript" src="app.js"></script>
    </head>
    <body ng-controller="GetBill" id="wrap">
        <div>
            <h2>
            <p>Statement date: {{bill.statement.generated}}, payment due: {{bill.statement.due}}</p>
            <p>For the period between {{bill.statement.period.from}} and {{bill.statement.period.to}}</p>
            </h2>
    	</div>

    	<h3>Packages</h3>
    	<div>
    	    <table border="1" width="1024">
    	    <thead>
    	        <tr>
    	            <td>Service</td>
    	            <td>Subscription Name</td>
    	            <td>Cost</td>
    	        </tr>
    	    </thead>
    	    <tbody>
                <tr ng-repeat="subscription in bill.package.subscriptions">
                    <td>Sky {{subscription.type}}</td>
                    <td>{{subscription.name}}</td>
                    <td>{{subscription.cost | currency:"£"}}</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2"><b>Total:</b></td>
                    <td><b>{{bill.package.total | currency:"£"}}</b></td>
                </tr>
            </tfoot>
            </table>
        </div>

        <h3>Phone Calls</h3>
        <div>
            <table border="1" width="1024">
            <tbody>
                <tr ng-repeat="call in bill.callCharges.calls">
                    <td>Call to {{call.called}}, duration {{call.duration}}</td>
                    <td>{{call.cost | currency:"£"}}</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td><b>Total:</b></td>
                    <td><b>{{bill.callCharges.total | currency:"£"}}</b></td>
                </tr>
            </tfoot>
            </table>
        </div>

        <h3>Sky Store</h3>
        <div>
            <table border="1" width="1024">
            <tbody>
                <tr ng-repeat="rental in bill.skyStore.rentals">
                    <td>Rental: {{rental.title}}</td>
                    <td>{{rental.cost | currency:"£"}}</td>
                </tr>
                <tr ng-repeat="bought in bill.skyStore.buyAndKeep">
                    <td>Bought: {{bought.title}}</td>
                    <td>{{bought.cost | currency:"£"}}</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td><b>Total:</b></td>
                    <td><b>{{bill.skyStore.total | currency:"£"}}</b></td>
                </tr>
            </tfoot>
            </table>
        </div>

        <div>
        <h2>Bill total - {{bill.total | currency:"£"}}</h2>
        </div>
    </body>
</html>