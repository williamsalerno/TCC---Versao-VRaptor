package br.com.timetrialfactory.infra;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.com.timetrialfactory.model.entity.User;

@Component
@SessionScoped
public class UserWeb {

	private User logged;

	public void login(User user) {
		this.logged = user;
	}

	public String getName() {
		return logged.getFullName();
	}

	public boolean isLogged() {
		return logged != null;
	}
	
	public boolean isAdmin(){
		return logged.isAdmin();
	}

	public void logout() {
		this.logged = null;
	}
}
