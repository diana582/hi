class classroom {
  String Roomno;
  String Block;
  String no_rows;
  String no_cols;
  classroom(
      {required this.Roomno,
      required this.Block,
      required this.no_rows,
      required this.no_cols});

      static Set<classroom> classroom1(){
        return{

          classroom(Roomno: 'm206', Block: 'mech', no_rows: '6', no_cols: '9'),
          classroom(Roomno: 'm206', Block: 'mech', no_rows: '6', no_cols: '9'),

          classroom(Roomno: 'm206', Block: 'mech', no_rows: '6', no_cols: '9'),
          classroom(Roomno: 'm206', Block: 'mech', no_rows: '6', no_cols: '9'),

          classroom(Roomno: 'm206', Block: 'mech', no_rows: '6', no_cols: '9'),




        };
      }
}
