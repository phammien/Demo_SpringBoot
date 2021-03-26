$(document).ready(function(){
	
	$(".add-cart-many").click(function(){
		var id = $(this).parents("[data-id]").attr("data-id");
		var promotion = $(this).parents("[data-promotion]").attr("data-promotion");
		var quantity = $('#quantity').val();
		var uis = $(this).parents("[data-uis]").attr("data-uis");
		
		$.ajax({
			url:"cart/addmany.php",
			data:{id: id, promotion: promotion, quantity: quantity},
			dataType: "json",
			success: function(response){
				var x = response.count;
				if(x>uis) {
					alert("You have already exceeded the number of product");
					$.ajax({
						url:"cart/removemany.php",
						data:{id: id, promotion: promotion, quantity: quantity},
						dataType: "json",
						success: function(response){
							$(".nn-cart").html(response.count + " Sản phẩm/Giỏ hàng");	
							/*window.location.reload();*/
						}
					});
				} else {
					$(".nn-cart").html(response.count + " Sản phẩm/Giỏ hàng");	
					window.location.reload();
				}				
			}
		});
	});
		 
	
	$(".nn-remove-from-cart").click(function(){
		 var id = $(this).parents("[data-id]").attr("data-id");
		 $.ajax({
			 url:"cart/remove.php",
			 data:{id: id},
			 dataType:"json",
			 success: function(response){
				 $(".nn-cart").html(response.count + " Sản phẩm/Giỏ hàng");
				 window.location.reload();
			 }
		 });
	});
	
});
