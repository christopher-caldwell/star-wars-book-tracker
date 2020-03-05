import React, { Fragment } from "react";
import { Switch, Route } from "react-router-dom";
import Header from 'components/header/Header'
import Main from 'views/Main'

const Router = props => {
	return (
		<Fragment>
			<Header {...props}/>
			<main className="main">
				<Switch>
					<Route path="/" component={Main} />
				</Switch>
			</main>
		</Fragment>
	)
};

export default Router;