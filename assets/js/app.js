import React, { Component } from 'react'
import ReactDOM from 'react-dom'

import { ApolloProvider, graphql } from 'react-apollo'
import client from './client'
import getJuice from './queries/get-juice'

class Juice extends Component {
  render () {
    const { data } = this.props
    return(
      <tr>
        <td>{data.name}</td>
        <td>{data.rating}</td>
      </tr>
    )
  }
}

@graphql(getJuice)
class RootComponent extends Component {
  render () {
    const { data } = this.props

    return (
      <div>
        <h2>Juices</h2>
        <table>
          <tr>
            <th><div>Name</div></th>
            <th><div>Rating</div></th>
          </tr>
          {data && data.allJuices && data.allJuices.map(j => <Juice data={j} />)}
        </table>
      </div>
    )
  }
}

const reactRoot = document.getElementById('root')
if (reactRoot) {
  ReactDOM.render(
    <ApolloProvider client={client}>
      <RootComponent />
    </ApolloProvider>,
    reactRoot
  )
}
