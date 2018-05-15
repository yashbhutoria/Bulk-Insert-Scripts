import re
datatypemap = {
    'test': 'test'
}

def stringContains(st, ptr):
    return re.search(ptr.upper(), st.upper()) != None


def dataTypeMapper(colname):
    backwards_name = str([x for x in reversed(colname.split())]) 
    knownKeyWords = {
        'COST': 'FLOAT',
        '%': 'FLOAT',
        'COUNT': 'INT',
        'DATE': 'NVARCHAR(30)',
        'FLAG' : 'INT'
    }
    DEFAULT = 'NVARCHAR(500)'
    for keyword in knownKeyWords.keys():
        if(stringContains(backwards_name, keyword)):
            datatypemap[colname] = knownKeyWords[keyword.upper()]
            break
        else:
            datatypemap[colname] = DEFAULT


def addCol(col):
    return "\t["+col+"] "+datatypemap[col]+",\n"


def createSchema(cols, tableName):
    query = "CREATE TABLE " + tableName + "{\n"
    for col in cols:
        query += addCol(col)
    query += "}"
    print(query)


def main():
    
    cols = ['first', 'second', 'third']
    tableName = 'TestTable'

    for col in cols:
        dataTypeMapper(col)

    createSchema(cols, tableName)


if __name__ == '__main__':
    main()
