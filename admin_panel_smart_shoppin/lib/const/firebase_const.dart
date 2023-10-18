import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
User? curruntUser = auth.currentUser;

//collections

const vendorCollections = "vendor";
const productCollections = "products";
const chatCollection = "chats";
const messageCollection = "Messages";
const orderCollection = "Orders";
