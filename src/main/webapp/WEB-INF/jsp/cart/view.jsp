<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/jspf/header.jspf"%>
<div class="container">
	<section class="cartView">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<h2>Itens no carrinho</h2>
			</div>
			<c:choose>
				<c:when test="${empty cart.items }">
					<h3 style="text-align: center;">Carrinho vazio</h3>
				</c:when>
				<c:otherwise>
					<c:forEach items="${cart.items}" var="item" varStatus="s">
						<div class="gameInCart">
							<h4>${item.game.title }</h4>
							<h4>
								<fmt:formatNumber type="currency" value="${item.game.price }" />
							</h4>
							<form style="float: right;"
								action="<c:url value="/cart/${s.index}"/>" method="post">
								<button class="link btn btn-default" name="_method"
									value="delete">Remover</button>
							</form>

						</div>
					</c:forEach>
					<div class="totalCart">
						Total:
						<fmt:formatNumber type="currency" value="${cart.total }" />
					</div>
				</c:otherwise>
			</c:choose>
			<div class="btnCart">
				<form action="<c:url value="/games"/>" method="get">
					<button class="link btn btn-default">Voltar</button>
				</form>
			</div>
		</div>
	</section>
</div>
<%@ include file="/WEB-INF/jspf/footer.jspf"%>