import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LemonadeStandComponent } from './lemonade-stand.component';

describe('LemonadeStandComponent', () => {
  let component: LemonadeStandComponent;
  let fixture: ComponentFixture<LemonadeStandComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LemonadeStandComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(LemonadeStandComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
