// import { gql } from 'react-apollo'
import gql from 'graphql-tag'

export default gql`
  query {
    allJuices {
      name
      rating
    }
  }
`