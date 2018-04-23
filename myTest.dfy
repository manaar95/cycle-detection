method Main() //returns (returnVal: int)
{
    var s: seq := [1,2,3,4,5];

    var i,j := 0,0;

    while ((j + 2) < |s| )
    invariant 0 <= i <= j;
    invariant j < |s|;
    {
      j := j + 2;
      i := i + 1;
    }
    assert 0 <= i <= j < |s|;
     var returnVal := s[i];
     print returnVal;
}

