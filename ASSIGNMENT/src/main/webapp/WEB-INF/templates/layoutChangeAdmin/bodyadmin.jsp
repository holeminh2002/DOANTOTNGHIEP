
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="content">
    <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-body ">
                    <div class="row">
                        <div class="col-5 col-md-4">
                            <div class="icon-big text-center icon-warning">
                                <i class="nc-icon nc-globe text-warning"></i>
                            </div>
                        </div>
                        <div class="col-7 col-md-8">
                            <div class="numbers">
                                <p class="card-category">User</p>
                                <p class="card-title">${count}<p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer ">
                    <hr>
                    <div class="stats">
                        <i class="fa fa-refresh"></i>
                        Update Now
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-body ">
                    <div class="row">
                        <div class="col-5 col-md-4">
                            <div class="icon-big text-center icon-warning">
                                <i class="nc-icon nc-money-coins text-success"></i>
                            </div>
                        </div>
                        <div class="col-7 col-md-8">
                            <div class="numbers">
                                <p class="card-category">Revenue Year</p>
                                <p class="card-title">$ ${orderList}<p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer ">
                    <hr>
                    <div class="stats">
                        <i class="fa fa-calendar-o"></i>
                        Last day
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-body ">
                    <div class="row">
                        <div class="col-5 col-md-4">
                            <div class="icon-big text-center icon-warning">
                                <i class="nc-icon nc-vector text-danger"></i>
                            </div>
                        </div>
                        <div class="col-7 col-md-8">
                            <div class="numbers">
                                <p class="card-category">Revenue Month</p>
                                <p class="card-title">$${orderListMonth}<p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer ">
                    <hr>
                    <div class="stats">
                        <i class="fa fa-clock-o"></i>
                        In the last hour
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-body ">
                    <div class="row">
                        <div class="col-5 col-md-4">
                            <div class="icon-big text-center icon-warning">
                                <i class="nc-icon nc-favourite-28 text-primary"></i>
                            </div>
                        </div>
                        <div class="col-7 col-md-8">
                            <div class="numbers">
                                <p class="card-category">Followers</p>
                                <p class="card-title">+45K<p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer ">
                    <hr>
                    <div class="stats">
                        <i class="fa fa-refresh"></i>
                        Update now
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card ">
                <div class="card-header ">
                    <h5 class="card-title">Users Behavior</h5>
                    <p class="card-category">24 Hours performance</p>
                </div>
                <div class="card-body ">
                    <h4>${message}</h4>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Username</th>
                            <th scope="col">Address</th>
                            <th scope="col">Price</th>
                            <th scope="col">Available</th>
                            <th scope="col">Confirm</th>
                            <th scope="col">CreateDate</th>
                            <th scope="col">Details / Confirmed</th>
                        </tr>
                        </thead>
                        <c:forEach var="item" items="${items}">
                            <tbody>
                            <tr>
                                <td>${item.username}</td>
                                <td>${item.address}</td>
                                <td>${item.price}</td>
                                <td>${item.available?"Ordered":"Cancel"}</td>
                                <td>${item.confirm?"Confirmed":"Cancel"}</td>
                                <td>${item.createDate}</td>
                               <th><a class="" href="/Admin/Order/Details/${item.id}">Details</a> <a class="" href="/Admin/Details/Confirmed/${item.id}">Confirmed</a></th>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
                <div class="card-footer ">
                    <hr>
                    <div class="stats">
                        <i class="fa fa-history"></i> Updated 3 minutes ago
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card ">
                <div class="card-header ">
                    <h5 class="card-title">Users Behavior</h5>
                    <p class="card-category">24 Hours performance</p>
                </div>
                <div class="card-body ">
                    <h4>${message}</h4>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>Category Name</th>
                            <th>Total Price</th>
                            <th>Count Product</th>
                        </tr>
                        </thead>
                        <c:forEach var="item" items="${rep}">
                            <tbody>
                            <tr>
                                <td>${item.group.name}</td>
                                <td>${item.sum}</td>
                                <td>${item.count}</td>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
                <div class="card-footer ">
                    <hr>
                    <div class="stats">
                        <i class="fa fa-history"></i> Updated 3 minutes ago
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form action="/Admin/Views" method="get" id="form">
	    <select name="year">
	    </select>
    </form>
 <div>
  <canvas id="myChart"></canvas>
</div>
<br>
    
    <div class="row">
        <div class="col-md-4">
            <div class="card ">
                <div class="card-header ">
                    <h5 class="card-title">Email Statistics</h5>
                    <p class="card-category">Last Campaign Performance</p>
                </div>
                <div class="card-body ">
                    <canvas id="chartEmail"></canvas>
                </div>
                <div class="card-footer ">
                    <div class="legend">
                        <i class="fa fa-circle text-primary"></i> Opened
                        <i class="fa fa-circle text-warning"></i> Read
                        <i class="fa fa-circle text-danger"></i> Deleted
                        <i class="fa fa-circle text-gray"></i> Unopened
                    </div>
                    <hr>
                    <div class="stats">
                        <i class="fa fa-calendar"></i> Number of emails sent
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card card-chart">
                <div class="card-header">
                    <h5 class="card-title">NASDAQ: AAPL</h5>
                    <p class="card-category">Line Chart with Points</p>
                </div>
                <div class="card-body">
                    <canvas id="speedChart" width="400" height="100"></canvas>
                </div>
                <div class="card-footer">
                    <div class="chart-legend">
                        <i class="fa fa-circle text-info"></i> Tesla Model S
                        <i class="fa fa-circle text-warning"></i> BMW 5 Series
                    </div>
                    <hr />
                    <div class="card-stats">
                        <i class="fa fa-check"></i> Data information certified
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
	
  const ctx = document.getElementById('myChart');
const dat = new Date()
const selectElement = document.querySelector("select[name='year']")
//JSON.parse('${years}').forEach(i = > {
//		selectElement.innerHTML += "<option value=" + "'" + i + "'>" + i + "</option>"
//		if(i == '${year}') selectElement.lastChild.setAttribute("selected", true)
//})
	for(let i of JSON.parse('${years}')) {
		selectElement.innerHTML += "<option value=" + "'" + i + "'>" + i + "</option>"
		if(i == '${year}') selectElement.lastChild.setAttribute("selected", true)
	}
selectElement.addEventListener("change", e => {
	document.querySelector("#form").submit()
})
function getMonthName(monthNumber) {
  const date = new Date();
  date.setMonth(monthNumber - 1);

  return date.toLocaleString('en-US', {
    month: 'long',
  });
}
const data = JSON.parse('${bieudothang}')
const months = data.map(v => getMonthName(v[1]) )
const values = data.map(v => v[0])

  new Chart(ctx, {
    type: 'line',
    data: {
      labels: months,
      datasets: [{
        label: 'monthly revenue diagram',
        data: values,
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: false
        }
      }
    }
  });
</script>