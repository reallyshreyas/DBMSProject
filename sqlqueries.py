import random
import mysql.connector

# generate userids, bookingids
def generateid():
    id = random.randint(11111,99999)
    return id

# retrieve the number of pasengers from a particular booking
def book_passengers(bookid):
    mycursor = mydb.cursor()
    sql = "SELECT passengers FROM booking WHERE booking_id = '" + str(bookid) + "'"
    mycursor.execute(sql)
    seats = mycursor.fetchall()
    return seats[0][0]

# retrieve the number of bus seats in left
def get_bus_seats(busid):
    mycursor = mydb.cursor()
    sql = "SELECT capacity FROM bus WHERE busid = '" + str(busid) + "'"
    mycursor.execute(sql)
    seats = mycursor.fetchall()
    return seats

# update the number of seats left after booking
def update_bus_passengers(busid, newpass):
    mycursor = mydb.cursor()
    updtbk = "update bus set capacity = capacity-" + str(newpass) + " where busid = '" + str(busid) + "'"
    mycursor.execute(updtbk)
    mydb.commit()

# fetch all the buses from a location to_ to from_
def allbus(to_, from_):

    mycursor = mydb.cursor()
    sql = "SELECT * FROM bus WHERE to_ = " + "'" + str(to_) + "'" + " AND from_ = " + "'" + from_ + "'"
    mycursor.execute(sql)

    myresult = mycursor.fetchall()
    return myresult

# fetch all the details of a bus (eg. rating, time, seats_left, etc)
def busdetails(busid):
    mycursor = mydb.cursor()
    sql = "SELECT * FROM bus WHERE busid = " + "'" + str(busid) + "'"
    mycursor.execute(sql)

    myresult = mycursor.fetchall()
    return myresult

# add a new user to the users table
def userinsert(det):
    mycursor = mydb.cursor()

    sql = "INSERT INTO user (userid, username, phone, email, bookid, total_fare) VALUES (%s, %s, %s, %s, %s, %s)"
    val = tuple(det)
    mycursor.execute(sql, val)
    mydb.commit()
    return

# add a new booking to the booking table
def bookinginsert(det):
    mycursor = mydb.cursor()

    sql = "INSERT INTO booking (booking_id, userid, busid, passengers) VALUES (%s, %s, %s, %s)"
    val = tuple(det)
    mycursor.execute(sql, val)

    mydb.commit()
    return

# retrieve the booking details of a particular booking
def booking_details(id):
    mycursor = mydb.cursor()
    sql1 = "SELECT * FROM booking WHERE booking_id = " + "'" + str(id) + "'"
    mycursor.execute(sql1)
    result1 = mycursor.fetchall()
    sql2 = "select * from user where userid in ( select userid from booking where booking_id = " + "'" + str(id) + "'" + ");"
    mycursor.execute(sql2)
    result2 = mycursor.fetchall()
    sql3 = "select * from bus where busid in ( select busid from booking where booking_id = " + "'" + str(id) + "'" + ");"
    mycursor.execute(sql3)
    result3 = mycursor.fetchall()
    return result1+result2+result3

# delete a particular reservation
def delete(bookid):
    det = booking_details(bookid)
    userid = det[0][1]
    mycursor = mydb.cursor()

    sql1 = "delete from booking where booking_id = '" + str(bookid) + "'"
    mycursor.execute(sql1)
    mydb.commit()

    sql2 = "delete from user where userid = '" + str(userid) + "'"
    mycursor.execute(sql2)

    mydb.commit()


# update the details of booking of user [name, email, number, seats]
def updatebookuser(user, book, bookid):
    mycursor = mydb.cursor()
    sql = "SELECT userid FROM booking WHERE booking_id = '" + str(bookid) + "'"
    mycursor.execute(sql)
    userid = mycursor.fetchall()
    userid = userid[0][0]
    pas = book
    updatebookingpassengers(bookid, pas)

    name, phno, email = user
    updtus = "update user set username = '" + str(name) + "',phone = '" + str(phno) + "',email = '" + str(email) + "' where userid = '" + str(userid) + "'"
    mycursor.execute(updtus)
    mydb.commit()

# update the number of passengers in a booking 
def updatebookingpassengers(bookid, pas):
    mycursor = mydb.cursor()
    pas = pas[0]
    updtbk = "update booking set passengers = " + str(pas) + " WHERE booking_id = '" + str(bookid) + "'"
    print(updtbk) 
    mycursor.execute(updtbk)
    mydb.commit()
    


# --------- CONNECT TO THE DATABASE ------------  
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="shreyas1509",
    database="BlueWhaleTravels"
)