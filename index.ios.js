
import React,{
  Component
} from 'react';
import {
    StyleSheet,
    AppRegistry ,
    Text,
    View,
    Image
} from 'react-native';

class ReactNativeDemo extends React.Component {
  render() {
    var contents = this.props["scores"].map(
        score => <Text key={score.name}>{score.name}:{score.value}{"\n"}</Text>
    );
    let pic = {
        url :'https://upload.wikimedia.org/wikipedia/commons/d/de/Bananavarieties.jpg'

    };
    return (
        <View style={styles.container}>
          <Text style={styles.highScoresTitle}>
            This is ReactNativeDemo!
          </Text>
          <Text style={styles.scores}>
            {contents}
          </Text>

          <Image source={pic} style= {styles.image} />


        </View>

    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
  image:{
    width : 193,
    height : 110,
    
  },
});

// 整体js模块的名称
AppRegistry.registerComponent('ReactNativeDemo', () => ReactNativeDemo);